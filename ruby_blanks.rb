$vowel = "aeiou"
word = []

def sent(w1,w2,w3,w4) 
  "I decided to #{w1} #{$vowel.include?(w2[0]) ? "an" : "a"} #{w2} for my #{w3} #{w4}"
end 
data = { "types" => ["verb", "adjective", "adjective", "noun"] }



puts "---------------"
puts "| Ruby Blanks |"
puts "---------------"
data["types"].each do |pos|
  print "Give me #{$vowel.include?(pos[0]) ? "an" : "a"} #{pos}: "
  word << gets.chomp
end
puts
puts sent(*word)
puts