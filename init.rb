# frozen_string_literal: true

require_relative 'classes/person.rb' # loads in code as if it was copied and pasted in here
require_relative 'classes/animal'

person = Person.new  # create new instance
puts person.say_hello  # call method

person.first_name = "Jane"
person.last_name = "Smith"

puts person.first_name
puts person.last_name
puts person.initial_and_last_name
puts person.get_initial # will not work bc it’s private

puts "_"*8

# pig = Animal.new
# pig.set_noise('oop')
# puts pig.make_noise
# pig.set_noise
# puts pig.make_noise

pig = Animal.new
pig.noise = 'snort!' # set the value here
puts pig.noise  # read it back

