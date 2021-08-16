# Classes and Modules

## Classes

### Class Definition

- singular nouns
- capital camel case `ShoppingCart`
- each class defined in separate file
- group classes in dir
- can be redefined or modified
  - add new changes without whenever
    
- Attributes = State
- Methods = behavior

### add attributes by defining them as custom methods in def
```ruby
class ShoppingCart
  
  # methods part of class template
  def quantity
    # ...
  end
  
  def total
    # ...
  end
  
end
```

## Instances

```ruby
string = "pasta"  # "pasta"
string = String.new  # ""
array = Array.new  # []
hash = Hash.new  # {}
```

1. first create method in class
2. create new instance
2. then call method

```ruby
class Person
  
  def say_hello
    'Hello!'
  end
end

person = Person.new  # new instance
puts person.say_hello  # call method in new instance
```