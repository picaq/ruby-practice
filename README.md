# ruby-practice and notes
some files from linkedin learning’s Ruby Essential Training Part 1: The Basics

notes below:
# Objects
## Numbers

```ruby
# change to float
num.to_f

# change to integer, truncates like .floor
num.to_i

.round
.floor
.ceil
.abs
```

## Strings
```ruby
# append
string << "substr"

# multiplication
string * 3

# type conversion
# number to string
num.to_s

# string to integer
string.to_i

# all caps
string.upcase

# lowercase all
string.downcase

# title case
string.capitalize

# reverse chars
string.reverse
 
# length
string.length
```
### double-quoted string powers
```ruby
# tab, newline
"\t \n"

# string interpolation
"some string #{variable}"
```

## Arrays
```ruby
# append ( like arr.push )
array << element

# indexing
array[-1] # last element
array[-2] # second til last 
   etc...

# portion of array
array[starting_i, num_of_elem]
array[starting_i.. ending_i] # range, where starting_i < ending_i

```

### array methods
```ruby
# ! at the end of the methods reassigns the array to the change
array.reverse
array.shuffle
array.flatten

# removes duplicate values
array.uniq

# removes all nils
array.compact

# ? to query or find out about something
array.include?(element_val) # returns true or false

# delete value and index and shifts everything over
array.delete_at(index) # returns the deleted value

# find value and delete if found
array.delete(value) # returns deleted value or nil

# array <-> string (delimiter = optional)
array.join(delimiter) 
string.split(delimiter)

# stack methods
array.push
array.pop
array.shift
array.unshift

# add/remove elements
array + [ele1, ele2, ele3]
array - [element]
```

## Hashes
- aka dictionaries, associative arrays
- unordered
- find items by key, not position

```ruby
hash = {
   'key' => 'value',
   'label' => 'value'
}

# accessing obj
hash['key'] # returns 'value'

# assigning
hash['label'] = 'another value'

# return array
hash.keys # of keys
hash.values # of values

# converts hash -> array
hash.to_a # returns 2D array of [key, value]

```

## Symbols
- immutable strings/labels, not variables
- start with :
- lowercase, underscores
- cannot start key with numbers
- no quotes or spaces
- can be used in hashes
- refers to exact same item `.object_id` in memory, opposed to strings
    - less frequent garbage collection

```ruby
hash =  {
   :some_key => 'Some value',
   :a_symbol => 'a value'
}

# retrieve a value
hash[:a_symbol] # returns 'a value'

# shorthand looks like json
hash = {
   some_key: 'Some value',
   a_symbol: 'a value'
}

# shorthand keys are ALWAYS all symbols
hash.keys.first.class # returns Symbol

```


<!-- 
```ruby


``` -->