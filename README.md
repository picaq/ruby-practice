# ruby-practice and notes
some files from linkedin learning’s Ruby Essential Training Part 1: The Basics

notes below:
## numbers

```rb
# change to float
num.to_f

# change to integer, truncates like .floor
num.to_i

.round
.floor
.ceil
.abs
```

## strings
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