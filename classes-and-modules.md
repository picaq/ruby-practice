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

#### add attributes by defining them as custom methods in def
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

## Attributes

values that persists inside an instance

- attributes are blanks filled in
- properties of an object
- i.e. the car is `green`
- stored in **instance variables**

`@variable` 

`@`= scope indicator

```ruby
class Animal
  
  def make_noise
    @noise
  end
  
  def set_noise
    @noise = 'Oink!'
  end
end

pig = Animal.new
pig.set_noise  # sets string to inst variable
puts pig.make_noise
# Oink!
```

- the value persists even tho it has changed to a different method
- local variable can’t do that
- the variable persists throughout the instance
- an instance of a class always has access to its instance variables
- ↑ can pull up a value of an instance variable from anywhere inside the class

