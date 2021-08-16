# frozen_string_literal: true

require_relative 'classes/person.rb' # loads in code as if it was copied and pasted in here
require_relative 'classes/animal'

person = Person.new  # create new instance
puts person.say_hello  # call method

# pig = Animal.new
# pig.set_noise('oop')
# puts pig.make_noise
# pig.set_noise
# puts pig.make_noise

pig = Animal.new
pig.noise = 'snort!' # set the value here
puts pig.noise  # read it back

