class Parent
  attr_reader :first_name

  def initialize(first_name, gender)
    @first_name = first_name
    @gender = gender
  end
end

class Child < Parent; end

