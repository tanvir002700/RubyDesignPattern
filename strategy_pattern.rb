class Flys
  def fly; end
end

class ItFlys < Flys
  def fly
    return "Flying High"
  end
end

class CantFly < Flys
  def fly
    return "I can't fly"
  end
end

class Animal
  attr_reader :name, :flying_type

  def initialize(name)
    @name = name
    @flying_type = nil
  end

  def try_to_fly
    flying_type.fly
  end
end

class Dog < Animal
  def initialize
    super("Dog")
    @flying_type = CantFly.new
  end
end

class Bird < Animal
  def initialize
    super("Bird")
    @flying_type = ItFlys.new
  end
end

