# begin with 1 consonant: move consonant to end & add "ay"
  # pig => igpay
  # latin => atinlay

# begin with vowel: add "ay"
  # elevator => elevatoray

# begin with consonant cluster: all consonants move to end & add "ay"
  # glove => oveglay
  # where => erewhay

VOWELS = ['a', 'e', 'i', 'o', 'u']
LETTERS = [*'a'..'z'] + [*'A'..'Z']

def pig_latin(word)
  caps = false
  if LETTERS.include?(word[0]) && word[0] == word[0].upcase
    caps = true
  end
  # convert word to array
  word_arr = word.downcase.split('')
  # find first vowel position
  last = word_arr.length - 1
  0.upto(last) do |i|
    if VOWELS.include?(word_arr[i])
      case i <=> 0
      when 0 ; return caps ? (word + 'ay').capitalize : word + 'ay'
      when 1 ; return caps ? (word[i..last] + word[0..i-1] + 'ay').capitalize : word[i..last] + word[0..i-1] + 'ay'
      end
    end
  end
  #   Array#find_index
  # if pos > 0
  # remove characters up to position
  # return main + front + 'ay'
end
# puts pig_latin("Ruby") # Ubyray
# puts pig_latin("pig")
# puts pig_latin("latin")
# puts pig_latin("elevator")
# puts pig_latin("glove")
# puts pig_latin("where")
# puts pig_latin("racecar")
# puts pig_latin("Space")

# part 2: preserve capitalization and punctuation for a sentence

def translate(sent)
  word_array = sent.split(/\s/)
  word_array.map! do |word|
    if word.length == 1 && !LETTERS.include?(word) # takes care of weird & => &0&
      word
    else
      front = word.match(/^[^a-zA-Z\s\d]+/).to_s
      last = word.match(/[^a-zA-Z\s\d]+$/).to_s
      spliced_word = word[front.length..-last.length-1]
      front + pig_latin(spliced_word).to_s + last
    end
  end
  word_array.join(" ")
end

puts "------------------------"
puts "| pig latin translator |"
puts "------------------------"
puts "type a sentence: " 
sentence = gets.chomp
puts
puts "pig latin: "
puts translate(sentence)
puts
