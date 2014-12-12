# http://linux.die.net/man/1/irb

IRB.conf[:PROMPT_MODE]  = :SIMPLE
# IRB.conf[:USE_READLINE] = true


# Check if RVM hasn't already loaded some history.
if Readline::HISTORY.size == 0
  histfile = File.expand_path(".irb-history", ENV["HOME"])

  if File.exists?(histfile)
    lines = IO.readlines(histfile).collect { |line| line.chomp }
    Readline::HISTORY.push("") if Readline::VERSION == "EditLine wrapper" # OS X native ruby?
    Readline::HISTORY.push(*lines)
  end
  Kernel::at_exit do
    maxhistsize = 100
    histfile = File::expand_path(".irb-history", ENV["HOME"])
    lines = Readline::HISTORY.to_a.reverse.uniq.reverse
    lines = lines[-maxhistsize, maxhistsize] if lines.compact.length > maxhistsize
    File::open(histfile, "w+") { |io| io.puts lines.join("\n") }
  end
end

# Remove duplicates in history
module Readline
  alias :old_readline :readline
  def readline(*args)
    line = old_readline(*args)
    # Check history for duplicates
    dups = []
    Readline::HISTORY.each_with_index do |l, i|
      dups << i if l == line
    end
    dups.reverse!
    dups.each do |i|
      i += 1 if Readline::VERSION == "EditLine wrapper" # OS X native ruby?
      Readline::HISTORY.delete_at(i) rescue nil
    end
    # File.open("#{ENV['HOME']}/.irb-history", 'ab') { |f| f << "#{line}\n" }
    line
  end
end

def history
  Readline::HISTORY.to_a
end

# Allow using these gems without adding them to bundler
# and try to load theese gems from rvm global gemset
rvm_global_gem_path = ENV['GEM_PATH'].split(':').grep(/@global/).first
if rvm_global_gem_path
  $LOAD_PATH << "#{rvm_global_gem_path}/gems/awesome_print-1.2.0/lib"
else
  puts "Global rvm gemset 'global' not found"
end

begin
  require "ap"

  module Kernel
    def ap(object, options = {})
      if object.respond_to?(:ai)
        puts object.ai(
          :indent => -2,
          :color => {
            :array      => :white,
            :bignum     => :green,
            :class      => :yellow,
            :date       => :green,
            :falseclass => :white,
            :fixnum     => :green,
            :float      => :green,
            :hash       => :white,
            :nilclass   => :white,
            :string     => :green,
            :symbol     => :cyan,
            :time       => :green,
            :trueclass  => :green
          }
        )
      else
        puts object.inspect
      end
    end
  end
  IRB::Irb.class_eval do
    def output_value
      ap @context.last_value
    end
  end
rescue LoadError, NameError => e
  $stderr.puts e.message
end

load File.dirname(__FILE__) + '/.railsrc' if $0 == 'script/rails' || ($0 == 'irb' && ENV['RAILS_ENV'])
