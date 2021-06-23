colors = "RRGGBBYYKK"
colours = "//--**~~\\\\"
# output 20 rows
# on each row, shift the characters to the left by 
  # removing the first character and putting it at the end
# first iteration: "RGGBBYYKKR"

# use loops or iterators
  # string[0], string[1..-1]
  # split, shift, join after converting to array

# colorArr = colors.split

20.times do
  puts colors
  colors = colors[1..-1] + colors[0]
end

20.times do
  puts colours
  colours = (colours.split('')[1..-1] << colours.split('').shift).join
end