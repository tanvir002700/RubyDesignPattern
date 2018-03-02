module Observable
  attr_reader :observers

  def initialize
    @observers = []
  end

  def add_observer(observer)
    @observers << observer
  end

  def notify_observers
    @observers.each{ |observer| observer.update }
  end
end

class Course
  include Observable

  attr_reader :name
  attr_accessor :observers

  def initialize(name)
    super()
    @name = name
  end

  def set_midterm(midterm_date)
    puts "set mid term exam for #{name}"
    notify_observers
  end
end

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

