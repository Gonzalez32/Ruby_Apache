# Modules

=begin
    Extracting common methods to a superclass, like we did in the 
    previous section, is a great way to model concepts that are naturally 
    hierarchical (a Cat is an Animal which is a Mammal).
    Another way of grouping methods together are modules.
    A module is a collection of methods that can be used in other classes 
    (think about them as libraries providing common functionality).
    Modules are defined using the module keyword followed by the module name, 
    which should start with a capital letter.
    For example:
=end

module Flyable
    def fly
        puts "I'm flying!!!"
    end
end

# A module called Flyable, which includes one method called fly.
# A module can include as many methods as you want.


# Modules


=begin
    Now, imagine having a class hierarchy, with a superclass Vehicle and subclasses: 
    Car, Jet, Plane.
    All have some shared functionality, which they inherit from the Vehicle class, 
    but only Jet and Plane can fly.
    Instead of defining separate fly methods for both classes, 
    we can define a module and include it (commonly referred to as "mix" it) in the classes.
=end

module Flyable
    def fly
        puts "I'm Flying!!!"
    end
end

class Vehicle

end

class Car < Vehicle

end

class Jet < Vehicle
include Flyable
end

class Plane < Vehicle
include Flyable
end

# Now Jet and Plane objects can fly, but objects of other classes won't be able to:

ob = Jet.new

ob.fly

=begin
    A common naming convention for Ruby is to use the "able" suffix on whatever verb 
    describes the behavior that the module is modeling, like Walkable, Swimmable, Runnable, etc.
    Not all modules are named in this manner, however, it is quite common.
=end

puts "0000000"

=begin
    As you may recall, Ruby does not allow a class to inherit from multiple classes.
    However, a class can mix in multiple modules. Modules used this way are known as "mixins".
    So, basically, a class can have multiple mixins:

    class Human
    include Walkable
    include Speakable
    include Runnable
    end
    
    It is important to remember the following:
    1. You can only inherit from one class. But you can mix in as many modules as you'd like.

    2. If it's an "is-a" relationship, choose class inheritance. 
    If it's a "has-a" relationship, choose modules. Example: a plane "is a" vehicle; a plane "has an" ability to fly.

    3. You cannot instantiate modules (i.e., an object cannot be created from a module).
    Modules are used only for grouping common methods together.
    Classes are about objects; modules are about methods.
    
    
    Mixins give you a great, controlled way of adding functionality to classes.
=end


# Mixins

=begin
    The true power of mixins comes out when the code in the mixin starts to interact with code 
    in the class that uses it. Ruby has a number of predefined mixins ready for you to use.
    Let's take the standard Ruby mixin Comparable as an example. The Comparable mixin 
    can be used to add the comparison operators (<, <=, ==, >=, and >) to a class.
    For this to work, Comparable assumes that any class that uses it defines the operator <=>.
    So, as a class writer, you define the one method, <=>, 
    include Comparable, and get six comparison functions as a result!
    Let's try this with our Cat class, by making the cats comparable based on their age.
    All we have to do is include the Comparable module and implement the comparison 
    operator <=>.
=end

class Cat
    attr_accessor :name, :age
include Comparable
    def initialize(name, age)
        self.name = name
        self.age = age
    end

    def <=>(other)
        self.age <=> other.age
    end
end

c1 = Cat.new("Thick Boy", 4)
c2 = Cat.new("Jimmy", 7)
c3 = Cat.new("Lucy", 15)

puts c1 < c2

# Comparable module allows you to easily add comparsion operators based on any custom logic to your classes.

