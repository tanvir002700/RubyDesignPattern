class Char
  def initialize(name, size)
    @name = name
    @font_size = size
  end

  def print
    "font #{@name} size #{@font_size}"
  end
end

require 'singleton'

class CharFactory
  include Singleton

  def initialize
    @pool = Hash.new
  end

  def get_char(name, size)
    char = @pool[name]

    if char.nil?
      big_char = Char.new(name, size)
      @pool[name] = big_char
    end

    big_char
  end
end

class BigString
  def initialize(string, size)
    @chars = []
    factory = CharFactory.instance

    string.length.times do |i|
      @chars<< factory.get_char(string[i], size)
    end
  end

  def print
    @chars.each do |char|
      char.print
    end
  end
end

