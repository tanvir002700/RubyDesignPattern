class Student
  attr_reader :name, :courses

  def initialize(name)
    @name = name
    @courses = []
  end

  def enrolled(course)
    unless @courses.include?(course)
      @courses << course
      course.add_observer(self)
    end
  end

  def update
    puts "student #{name} notify about exam....."
  end
end

