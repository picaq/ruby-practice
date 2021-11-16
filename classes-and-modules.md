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


## Reader/writer methods
- aka getter/setter methods
- allow reading/writing to an attribute

### Instance Variables
- instantiation always has access to its instance variables
- instance variable inaccessible outside an instance
- methods accessible from outside instance
- use **methods to access instance variables**

```ruby
class Animal
  
  def get_noise  # getting back the value of noise
    @noise
  end
  
  def set_noise(value)
    @noise = value
  end

end

# ruby convention:

class Animal

  def noise  # getting back the value of noise
    @noise
  end

  def noise=(value)  # syntactic sugar, just assign a value to noise and have it work
    @noise = value
  end

end

# calling noise the method returns the instance variable @noise

pig = Animal.new
pig.noise = "Oink!"
```

- feels like asking for the value of the variable, but we are actually calling a method


## Attribute Methods

### `attr_*` methods

- `attr_reader`
- `attr_writer`
- `attr_accessor`

```ruby
attr_reader :name

# same as adding the definition to the class
def name
  @name
end


attr_writer :name

# same as setting a value
def name=(value)
  @name = value
end


# reader + writer both in one line
attr_accessor :name

# same as both combined above
def name
  @name
end

def name=(value)
  @name = value
end
```

```ruby
class Animal
  attr_accessor :noise
end

pig = Animal.new
pig.noise = 'Oink!' # write to the instance variable
puts pig.noise  # read back from instance variable
# Oink!
```

### Instances calling their own methods

Helps ruby understand to call the method

- use `self` to reference the current instance from the code inside the instance
- add `self` when calling writer methods `self.first_name=`
- omit `self` when calling other methods `first_name`
- safest to always include `self`


## Method Access Control
- methods = primary interfaces to class
  - used to access instance variables
- only expose when necessary so we have control over them
- Access control restricts access to methods from outside an instance
  - decides which methods are callable and which aren’t
  
### 3 levels of control:
- `public` anyone can access (default)
- `protected` can only be called by instances of the class and its subclasses
- `private` can only be called by instances of a class (only from within the code definition from the class itself, not from dot method)
  - cannot be called by subclasses

```ruby
class Newsletter
  # public methods by default
  def add_subscriptions # can still access private methods below
    subscribe_to_product_updates
    subscribe_to_press_releases
  end
  
private
  # use keyword to define private or protected methods
  def subscribe_to_product_updates
  end
  
  def subscribe_to_press_releases
  end
  
end
```

```ruby
class SomeClass
  
  def method1
  end
  
protected
  def method2
  end
  
private
  def method3
  end
  
end
```

## Initialize Method

- called automatically once a new instance of a class is created
  - `ShoppingCart.new`
- default or specific state
  - specific state accepts arguments to the method that gets passed on to initialize method

```ruby
class Animal
  
  attr_accessor :noise
  
  def initialize # this is the code to run whenever a new instance is created
    @noise = 'Oink!'
    puts "New animal instantiated"
  end

end

pig = Animal.new
# New animal instantiated
puts pig.noise # default value is Oink!
# Oink!
```

```ruby
class Animal
  
  attr_accessor :noise

  def initialize(options={})
    @noise = options[:noise] || 'Grrr!'
  end

end

pig = Animal.new({noise: 'Oink!'}) # curly brackets optional
puts pig.noise
# Oink!
```
