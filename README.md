# ruby-practice and notes
some practice files from Linkedin Learning’s [Ruby Essential Training Part 1: The Basics](https://www.linkedin.com/learning/ruby-essential-training-part-1-the-basics)

This assumes knowledge coming from JavaScript

notes below:
# Objects
## Numbers
- use floats for precision calculations
- integer •/÷ integer make less precise (rounded) results
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
- mutable
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

#find index of value
array.index(value) # returns index or nil

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
- immutable labels, not variables
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
## Booleans
- methods names that end in `?` returns booleans
```ruby
[1, 2, 3].include?(2) # returns true
2.between?(5,8) # returns false
[].empty? # true
hash.has_key?(:some_key) # true
hash.has_value?('value') # false
```
### Comparison + Logic Operators
```ruby
==  <  >  <=  >=  !  !=  &&  ||

true.class # returns TrueClass
false.class # returns FalseClass
```
## Ranges
- must wrap range in parens before calling methods if it is not in a variable
- avoid using exclusive ranges
```ruby
range.class = Range

# inclusive
1..10

# exclusive
1...10

# first item in range
range.first
range.begin

# last item of range
range.last
range.end

# create array from range
array = [*range]

# works with string chars
('a'..'m').include?('g') # return true

```

## Constants
- not obj but reference them
- all caps naming convention
   - title case works but not advised
- not meant to change but changeable
   - ruby will issue warning + change it
```ruby
THIS_IS_CONSTANT = 40
this_variable = 55
This_is_also_const = 'but ill advised'
```

## Nil
- aka null
```ruby
nil.class # returns NilClass

# nil is not false
nil == false # returns false

# 3 methods to check if something is nil
nil.nil? # returns true
88 == nil # returns false
!nil # returns true, checks if it has a thing
!88 # returns false, because it exists
!variable
```



<!-- ## Nil
```ruby

``` -->

