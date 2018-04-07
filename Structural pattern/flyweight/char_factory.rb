require './char.rb'
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
