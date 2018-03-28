require './member.rb'

class Family
  def initialize(surname)
    @surname = surname
    @children = []
  end

  def add_father(first_name)
    @father = Parent.new first_name, 'M'
  end

  def add_mother(first_name)
    @mother = Parent.new first_name, 'F'
  end

  def add_children(first_name, gender)
    @children << Child.new(first_name, gender)
  end

  def each_member
    [@father, @mother, @children].flatten.each do |member|
      yield member
    end
  end
end

