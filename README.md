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
- start with `:`
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

# Control Structures

## Conditionals

### if, elsif, else

```ruby
if boolean
  # ...
elsif boolean
  # ...
else
  # ...
end
```

### unless

- like a reverse if
- can chain with else

```ruby
unless boolean
  # ...
end

# equivalent to
if !boolean
  # ...
end

# example
unless array.empty?
 # ...
end
```

### case

```ruby
# case with booleans
# very flexible
case
when boolean
  # ...
when boolean
  # ...
else # default (optional)
  # ...
end

# case with comparisons
# simplified for comparing values
case test_value
when value
  # ...
when value
  # ...
else # default (optional)
  # ...
end
```

## Short-hand Operators

### ternary 

```ruby
boolean ? true_result : else_result
```

### Or Operator 

- great for setting default values

```ruby
x = y || z

# same as
y ? x = y : x = z
```

### Or-Equals Operator

```ruby
# if x has a value, use it, otherwise, set x = y
# does not execute if x has a value
x ||= y

# same as
unless x
  x = y
end
```

### Statement Modifieers

- only for single lines for readability

```ruby
x = y unless x
puts "Hello" if greeting_enabled
```

## Loops

```ruby
# infinite by default, needs control methods
loop do
  # ...
end
```

### control methods


```ruby
break # terminates whole loop
next # jump to next loop
redo # redo this loop
retry # restart whole loop
```

```ruby
# example
i = 5
loop do
  break if i <= 0
  puts "Countdown: #{i}"
  i -= 1
end
puts "Blast off!"
```

### while, until

- do is optional here?
- break is built into this loop
  
```ruby
# run while something is still true
while boolean
  # ...
end

# run until something becomes true
until boolean
  # ...
end
```

```ruby
# example: do/break is built into this loop
i = 5
while i > 0 # or until i <= 0 
  puts "Countdown: #{i}"
  i -= 1
end
puts "Blast off!"
```

## Iterators

- usually performs code on each item in a set ( array, hash, range ) of values to iterate through

```ruby
# example: times
i = 5
i.times do
  puts "Countdown: #{i}"
  i -= 1
end
puts "Blast off!"
```

### times, upto, downto, each

```ruby
5.times { puts "Hello" }
1.upto(5) { puts "Hello" }
5.downto(1) { puts "Hello" }
(1..5).each { puts "Hello" }
```

### Block Variables

- thing inside pipes == block variable
- only used inside its block
- next value become block variable as it iterates

```ruby
5.downto(1) do |i|
  puts "Countdown: #{i}"
end
puts "Blast off!"
```

### numbers

```ruby
num.times
1.upto(2)
5.downto(1)
num.step
```

### range

```ruby
range.each
(1..5).step
```

### string

```ruby
'str'.each_line
'str'.each_char
'str'.each_byte
```

### array

```ruby
array.each
['arr', 'ay'].each_index
[1, 2, 3].each_with_index
```

### hash

```ruby
hash.each
hash.each_key
hash.each_value
hash.each_pair
```

### for...in

```ruby
# example
fruits = ['banana', 'apple', 'pear']

# most common usage
fruits.each do |fruit|
  puts fruit.capitalize
end

# same as
for fruit in fruits
  puts fruit.capitalize
end
```

<!--
```ruby

``` -->

# Ruby Scripting

## Best Practices

- name files with `.rb`
- shebang line at top:
  - `#!/usr/bin/env ruby`
  - allows ruby scripts to be run anywhere
  - tells unix to go to environment and ask it to tell which vers of ruby to use
  
```bash
# shell command: what shebang does
/usr/bin/env ruby -v
```

## Exit a Running Script

- unlike `break`, which only stops looping but continues running the rest of the script

- `exit`, `exit!`
- `abort ( msg )`
  - useful for including error message
  - same as `puts msg` and then `exit`
- type `ctrl + c`
  - sends an interrupt signal and tells the program to stop running

## Input and Output

### Output

```ruby
puts # outputs a line return no matter what
print # all together on a single line

puts "Hello"
# same as 
print "Hello\n"
```

### Input

#### `gets`

- `gets` it from standard input, usually user input
- code will stop and listen to the keyboard for the user to enter data and hit return
- gets is written on the same line as the printed/puts line
- every user input comes back as a **string**
- the line return is included in `gets`
  - usually `.chop` or `.chomp` to remove line return (interchangeable)
  - `chop` removes last character of a string
  - `chomp` removes last character of a string if it is a new line character (usually used)

```ruby
# example
print "What is your name? "
respone = gets.chomp

puts "Hello, #{response}!"
# Hello, PicaQ!
```

# Enumerables and Code Blocks 

## [Enumerables](http://ruby-doc.org/core-2.5.1/Enumerable.html) (included modules)

- Countable items
- Arrays
- Ranges
- Hashes
- Strings ( kind of, used to be, and not anymore )
  - can act like enumerables but aren’t
  - can enumerate by character or by byte
  
### Methods

- `count` countable
- `each` allows iterating through set
  - requires having a code block that you can execute
- `each_with_index`
- `first`, `last`
- `include?`
- `max` , `min` if comparable

## Code Blocks

- delimited by `do`  and `end`

```ruby
# execute block 5 times
5.times do
  puts "Hello"
end

# same as
5.times { puts "Hello" }
```

### Curly-brace format

- single-line blocks
- blocks return data without changing anything
- anything simple
  
### Do-end format

- Multiline blocks
- Blocks that perform actions, make changes
- more complex executions

### Block Variable examples

```ruby
5.downto(1) do |i|
  puts "Countdown: #{i}"
end
puts "Blast off!"

# same as
5.downto(1) { |i| puts "Countdown: #{i}" }
puts "Blast off!"
```

- can use commas to list additional block variables
- only need one block variable for an array
- hash allows assigning `key` and `value` into separate block variables

```ruby
scores = {low:2, high: 8, avg: 6}

scores.each do |k, v|
  puts "#{k.capitalize}: #{v}"
end
```

### Variable Scope Indicators

|              |              |
|-------------:|--------------|
|  `$variable` | **Global**   |
| `@@variable` | **Class**    |
|  `@variable` | **Instance** |
|  `variable`  | **Local**    |
|  `variable`  | **Block**    |

#### Block Variable Scope

```ruby
factor = 2
[1,2,3,4,5].each do |n|
  puts n * factor
end

puts n # undefined local variable or method

n = 1
factor = 2
[1,2,3,4,5].each do |n|
  puts n * factor
end

puts n # 1
```

### Common Methods

- `find`
- `map`
- `inject`
- `sort`
- `merge`

### Optional Code Blocks

- methods that accept optional code blocks
  - usually modifies the default behavior, like sort in a certain way
- can write custom methods that accept code blocks
  
## Find Methods

- `.find == .detect`
  - only returns the first value it finds
- `.find_all == .select`
  - returns an array of all found values
- `.any? , .none?`
  - returns bools
- `.all? , .one?`
  - `all` is true only if **all** values match the boolean condition
  - `one` is true IFF **one** value matches condition
- `.delete_if`
  - modifies array in-place

```ruby
(1..10).find { |n| n % 3 == 0 } # 3

fruits = ['apple', 'banana', 'pear']
fruits.find { |fruit| fruit.length > 5 } # 'banana'

basket = {'apple' => 0, 'banana' => 1, 'pear' => 3}
basket.find_all { |k,v| v < 3 } # [["apple", 0], ["banana", 1]]

(1..10).any? { |n| n <= 5 } # true

(1..10).none? { |n| n <= 5 } # false

(1..10).all? { |n| n <= 5 } # false

(1..10).one? { |n| n == 5 } # true

nums = [*1..10]
nums.delete_if { |n| n <= 5 } # [6, 7, 8, 9, 10]
nums.delete_if { |n| n % 2 == 1 } # [6, 8, 10]
```

## Map Methods

- `.map == .collect`
  - iterate through enumerable
  - execute code block on each item
  - add result of block to a **new array**
  - `.map! or .collect!` for powerful/ destructive version by **replacing** contents of the existing array in-place
- num items **in** == num items **out**
- map from first element to second element
- always returns an **array** of results

```ruby
# arrays

x = [*1..5]
y = x.map {|n| n + 1 }

x # [1, 2, 3, 4, 5]
y # [2, 3, 4, 5, 6]

z = x.collect {|n| n * 50 }
z # [50, 100, 150, 200, 250]
```

```ruby
# hash will return an array

scores = { low: 2, high: 8, avg: 6 }

adj_scores = scores.map do |k, v| 
  "#{k.capitalize}: #{v * 100}"
end
# ["Low: 200", "High: 800", " Avg: 600" ]
```

```ruby
fruits = ['apple', 'banana', 'pear']

# returns the result of the block of code
y = fruits.map do |fruit|
  if fruit == 'pear'
    fruit.capitalize
  end
  # does nothing here for apple thus evals to nil
end
# [nil, nil, "Pear"]

y = fruits.map do |fruit|
  if fruit == 'pear'
    fruit.capitalize
  else
    fruit # do nothing to fruit
  end
end
# ["apple", "[banana]", "Pear"]

cap_fruits = fruits.map do |fruit|
  puts fruit.capitalize
  # but return value is nil
end
# Apple
# Banana
# Pear

cap_fruits # [nil, nil, nil]
```

