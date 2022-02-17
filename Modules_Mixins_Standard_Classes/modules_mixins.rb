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

