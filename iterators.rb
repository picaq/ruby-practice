i = 5

i.times do
  puts "Countdown #{i}"
  i -= 1
end
puts "Blast off!"

# better using block variable
10.times do |i|
  puts "Countdown #{10-i}"
end
puts "Blast off!"

# even better using downto
7.downto(1) do |i|
  puts "Countdown #{i}"
end
puts "Blast off!"

# condensed to 1 line
3.downto(1) { |i| puts "Countdown #{i}" }
puts "Blast off!"

# arrays
fruits = ['banana', 'apple', 'pear']

fruits.each do |fruit|
  puts fruit.capitalize
end