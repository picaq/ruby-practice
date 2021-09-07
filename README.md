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

## Inject Methods

- `inject == reduce`
- “Accumulator” Ruby convention = **memo**
- remember the result aka memo
- block variable used to accumulated
- `inject(memo)`
- if `memo` is not provided a value, it grabs the first element in the set and uses it as its value
- *return values matter* because it’s the result of the block that gets used

```ruby
(1..5).map { |n| n }

(1..5).inject { |memo, n| memo + n } # result of each operation stored in memo for the next operation
# 15

[3, 5, 7].inject { |memo, n| memo * n } # (3 * 5) * 7
# 105

[2, 4, 6].inject { |memo, n| memo ** n } # (2 ** 4) ** 6
# 16777216
```

### Return Values matter

```ruby
(1..5).inject do |memo, n|
  memo + n
  x = 0 # the only value that gets remembered
end
# 0

(1..5).inject do |memo, n|
  if n % 2 == 0 # when it’s not even it doesn’t add
    memo + n
  end
  # the memo is nil when n % 2 != 0
end
# undefined method "+" for nil
```

### Inject without Math

```ruby
fruits = ['apple', 'banana', 'pear']

# starting value is 0
size = fruits.inject(0) do |memo, fruit|
  memo + fruit.length
end
# 15

longest = fruits.inject do |memo, fruit|
  if fruit.length > memo.length
    fruit
  else
    memo
  end
end
# "banana"

mash = fruits.inject('') do |memo, fruit|
  memo << fruit[0]
end
# "abp"
```

## Sort Methods

### Comparison Operator

- `<=>`
- Comparison operator
- “Spaceship operator”
- usually used with sorts
  
```ruby
value1 <=> value2

-1  # if v1 < v2
 0  # if v1 == v2
 1  # if v1 > v2
```

```ruby
1 <=> 2  # -1
2 <=> 1  # 1
2 <=> 2  # 0
```


| `value1` | `<=>` | `value2` |
|-------------:|:------:|---|
|  -1 | <  | move ← |
|  0 | == | stay    |
|  1 | \> | move → |

### `.sort`

```ruby
array = [5,8,2,6,1,3]

# smaller items move to the left
x = array.sort { |v1, v2| v1 <=> v2 }
# [1, 2, 3, 5, 6, 8]

# greater items move to the right
x = array.sort { |v1, v2| v2 <=> v1 }
# [8, 6, 5, 3, 2, 1]

# reverse the sort by reversing the items in the block
```

### `.sort`, `.sort_by`

```ruby
fruits = ['banana', 'apple', 'pear']

# sort has default sort order
x = fruits.sort
# ["apple", "banana", "pear"]

# provide block for custom sort order
# sorted by string length here
x = fruits.sort do |fruit1, fruit2|
  fruit1.length <=> fruit2.length
end
# ["pear", "apple", "banana"]

# same as, but sort_by is a bit slower
x = fruits.sort_by { |fruit| fruit.length }
```

### Without `<=>`

```ruby
# custom sort order
# <=> is just returning one of 3 values
x = fruits.sort do |fruit1, fruit2|
  case fruit1
  when 'apple'; 1
  when 'banana'; -1
  when 'pear'; 0
end
# ["banana","pear","apple"]
```

- semicolons are rare and separate lines, but could just drop numbers into new lines

### Powerful/destructive

- `.sort!`, `.sort_by!`
- **replaces** contents
- sorts in-place
  
```ruby
array = [5,8,2,6,1,3]

array.sort! { |v1,v2| v1 <=> v2 }

array # [1, 2, 3, 5, 6, 8]
```

### Sorting Hashes

- how do you sort an unordered set?
- it returns an **array**
  - it converts the hash into an array and then it sorts

```ruby
hash = { a: 4, c: 5, b: 3 }

hash.sort { |p1, p2| p1[0] <=> p2[0] }
# [[:a, 4], [:b, 3], [:c, 5]]
```

## Merge methods

- hashes only
- Merges two hashes together
- blocks if you want to have rules

### Merge Without a Block

```ruby
# keys not the same but two overlap
# values for :a are different
h1 = { :a => 2, :b => 4, :c => 6 }
h2 = { :a => 3, :b => 4, :d => 8 }

h1.merge(h2)
# { :a => 3, :b => 4, :c => 6, :d => 8 }
# for :a the second, newer key value wins in key conflict

# flipped: the new value merged in wins
h2.merge(h1)
# { :a => 2, :b => 4, :c => 6, :d => 8 }
```

- key conflict = when keys both exist in the hashes but have different or the same values

### key conflict blocks

```ruby
# this block only gets called when there’s a key conflict
# key = key in conflict
# old is in h1
# new is being merged in from h2

# when there’s a key conflict the new one should win
h1.merge(h2) { |key, old, new| new }

# when there’s a key conflict the old value wins
# { :a => 3, :b => 4, :c => 6, :d => 8 }
h1.merge(h2) { |key, old, new| old }
# { :a => 2, :b => 4, :c => 6, :d => 8 }

# keep the old one if it is smaller than the new one otherwise keep the new one
h1.merge(h2) {|k,o,n| o < n ? o : n }
# { :a => 2, :b => 4, :c => 6, :d => 8 }

# multiplies the old and new together when there’s a conflict
h1.merge(h2) {|k,o,n| o * n }
#  { :a => 6, :b => 16, :c => 6, :d => 8 }
```

### destructive

- `.merge!`
- replaces hash contents by merging into the original hash

# Custom Methods

## methods predefined on ruby objects

- `"hello"`**`.reverse.capitalize`**
- `1`**`.upto`**`(5) { ... }`
- `[1,5,4,3,2]`**`.sort`**` { ... }`
  
## Methods info

- instructions to perform a specific task, packaged as a unit
  - called functions in other languages
  - but since ruby is OOP, call them methods
- define once and called many times
- DRY
- must be defined before it is called
- can be redefined

### Method naming

- lowercase with underscores
- first character can be letter or `_`
- contain letters, digits, underscores
- last char can be `? ! =`
  - **`?`** convention to return bool
  - **`!`** convention to indicate more powerful/destructive version
- avoid using the same name for variables and methods
- defined with `def` keyword
- can pass in different data in parens each time you use it
  
```ruby
# everything from def to end is our method definition
def some_name
  # ...
end

# must call the method to execute whatevs is inside the definition
def welcome
  puts "Hello World!"
end

welcome
# Hello world!
```

## Variable Scope

|              |              |
|-------------:|--------------|
|  `$variable` | **Global**   |
| `@@variable` | **Class**    |
|  `@variable` | **Instance** |
|  `variable`  | **Local**    |
|  `variable`  | **Block**    |

- local variables inside methods only have scope inside methods
- global, class, and instance have scope both inside/outside methods

```ruby
value = 10

def output_value
  puts value
end

output_value
# undefined local variable or method for 'value'

def set_value
  value = 20
end

set_value

value
# 10
```

## Arguments

- method can recieve values at runtime (when called)
- number of args must match defined number in the same order
- local variables inside the method

```ruby
def volume(x, y, z)
  x * y * z
end

volume(2,3)
# ArgumentError:
# wrong number of Arguments
# (given 2, expected 3)
```

### Argument Parentheses
- optional
  - methods with arguments use them
  - methods without args don’t use them
  - both for defining/calling
- convention: always add parens if there are args (but it will still work)

```ruby
# works but highly discouraged
def volume x, y, z
  x * y * z
end

volume 2,3,4
# 24
```

## Argument Default Values (Optional arguments)
- any ruby object or expression can be used
- `[]`  is common
- required args first
- optional args at end
- least likely used args at the very end
```ruby
def welcome(greet, name, punct='!')
  greet + ' ' + name + punct
end

puts welcome('Hello', 'friend')
# Hello friend!
```

### options hash
- maximum flexibility
- don’t have to provide any options
- if there are any, then code will look for it in the hash

```ruby
def welcome(greeting, options={})
  name = options[:name] || 'friend'
  punct = options[:punct] || '!'
  greeting + ' ' + name + punct 
end

# skips over middle option
puts welcome('Hello', {:punct => '!!!'})
# Hello friend!!!
```

## Return Values

- methods return last operation’s value by default
  - a return value of a puts line is nil
- `return`: returns a value and exits the method
  - useful in conditionals & loops

### be explicit to prevent errors
```ruby
def subtract(n1, n2)
  result = n1 - n2
  result = 0 if result < 0
  result  # explicitly state last value
end

subtract(8, 3)
# 5
```

### `puts` or `print` in methods

- best not to use `puts` or `print` in methods
  - methods that only return values are more flexible
  - except for methods designed strictly for output
  - i.e. have methods that do calculations and another that does output

## Return Multiple Values
- methods can only return one value (object)
- use an array or hash to return multiple Values
  - then look inside to get the desired values

```ruby
def add_and_subtract(n1, n2)
  add = n1 + n2
  sub = n1 - n2
  [add, subtract]  # returns array
end

# assign return value to result
result = add_and_subtract(8, 3)

# look inside to get values
a = result[0]
s = result[1]

# same thing with a hash
def add_and_subtract(n1, n2)
  add = n1 + n2
  sub = n1 - n2
  {:add => add, :sub => sub}
end

# assign return value to result
result = add_and_subtract(8, 3)

# use keys to assign corresponding values
a = result[:add]
s = result[:sub]

# array return values only:
# multiple assignment using csv/ comma delimited list
# ruby automatically takes the elements and assign to those variables
a, s = add_and_subtract(8, 3)
```

## [Classes and Modules notes](classes-and-modules.md)
