# begin with 1 consonant: move consonant to end & add "ay"
  # pig => igpay
  # latin => atinlay

# begin with vowel: add "ay"
  # elevator => elevatoray

# begin with consonant cluster: all consonants move to end & add "ay"
  # glove => oveglay
  # where => erewhay

VOWELS = ['a', 'e', 'i', 'o', 'u']

def pig_latin(word)
  # convert word to array
  # find first vowel position
  #   Array#find_index
  # if pos > 0
  # remove characters up to position
  # return main + front + 'ay'
end

puts pig_latin("Ruby")
# Ubyray
