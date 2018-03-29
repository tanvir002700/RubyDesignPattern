require './course.rb'
require './student.rb'

s = Student.new "test student"

cse = Course.new 'cse'
eee = Course.new 'eee'

s.enrolled(cse)
s.enrolled(eee)

cse.set_midterm(Time.now)
