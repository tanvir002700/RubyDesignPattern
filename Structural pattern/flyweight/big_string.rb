require './char_factory.rb'

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

