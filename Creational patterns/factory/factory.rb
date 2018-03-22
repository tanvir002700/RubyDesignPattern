
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

