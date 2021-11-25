# DiceSet instance contains 2 Dice instances
# DiceSet#roll rolls both dice
# rand(6)
# DiceSet#display display the values of both dice
#
#

class Dice
  def initialize
    @value = rand(6) + 1
  end

  def roll
    @value = rand(6) + 1
  end

  def value
    @value
  end

end

class DiceSet
  def initialize
    @d1 = Dice.new
    @d2 = Dice.new
  end

  def display
    "[ #{@d1.value} ] - [ #{@d2.value} ]"
  end

  def roll
    [@d1.roll, @d2.roll]
  end

end

ds = DiceSet.new
puts '--------------------'
puts '| Ruby Dice Roller |'
puts '--------------------'
puts 'there is a set of two dice'
puts 'press r to roll, and q to quit'
input = gets.chomp
while input && input != 'q'
  print "#{ds.roll}  " if input == 'r'
  input = gets.chomp # grabs new input and prevents infinite loop
end
puts 'end game'
