require './family.rb'

f = Family.new 'Test Family'

f.add_father 'father'
f.add_mother 'mother'

f.add_children 'child 1', 'm'
f.add_children 'child 2', 'f'
f.add_children 'child 3', 'm'

f.each_member do |m|
  puts m.first_name
end
