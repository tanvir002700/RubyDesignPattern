module Pizza
  attr_reader :type

  def make
    add_bun
    add_gravy
    add_sauce
  end

  def add_bun; end
  def add_gravy; end
  def add_sauce; end
end

class SpicyPizza
  include Pizza

  def initialize
    @type = 'spicy'
  end

  def add_bun
    puts "add bun"
  end

  def add_gravy
    puts "add gravy"
  end

  def add_sauce
    puts "add sauce"
  end
end
