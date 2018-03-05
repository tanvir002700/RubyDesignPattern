class Hero; end

class Warrior<Hero; end

class Mage<Hero; end

class WarriorFactory
  def create
    Warrior.new
  end
end

class MageFactory
  def create
    Mage.new
  end
end

class Factory
  attr_reader :members

  def initialize(factory)
    @members = []
    @factory = factory
  end

  def create(n)
    n.times{ @members << @factory.create }
  end
end

