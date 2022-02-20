# Namespacing

=begin
    We've already seen how modules can be used to mix-in common behavior into classes. Now we'll see two more uses for modules.
    The first case we'll discuss is using modules for namespacing.
    In this context, namespacing means organizing similar classes in a module. 
    In other words, we'll use modules to group related classes.
    For example:
=end

module Mammal
    class Dog
        def speak
            puts "Woof!"
        end
    end

    class Cat
        def speak
            puts "Meow"
        end
    end
end

=begin
    We defined a module Mammal which groups together two classes, Dog and Cat.
    Now we can call classes in the module by appending the class name to the 
    module name with two colons(::):
=end

a = Mammal::Dog.new
b = Mammal::Cat.new

a.speak
b.speak

=begin
    The advantages of namespacing classes:
    becomes easy for us to recognize related classes in our code.
    It reduces the likelihood of our classes colliding with other 
    similarly named classes in our code. We can have the same class names 
    across different modules.
=end


puts "----"


# Namespacing

=begin
    We've already seen how modules can be used to mix-in common behavior into classes. 
    Now we'll see two more uses for modules.
    The first case we'll discuss is using modules for namespacing.
    In this context, namespacing means organizing similar classes in a module. 
    In other words, we'll use modules to group related classes.
    For example:
=end

module Mammal
    class Dog
        def speak
            puts "Woof! WOoofff!"
        end
    end

    class Cat
        def speak
            puts "Meow"
        end
    end
end

=begin
    We defined a module Mammal which groups together two classes, Dog and Cat.
    Now we can call classes in the module by appending the class name to the 
    module name with two colons(::):

=end

a = Mammal::Dog.new
b = Mammal::Cat.new

a.speak
b.speak

=begin
    The advantages of namespacing classes:
    It becomes easy for us to recognize related classes in our code.
    It reduces the likelihood of our classes colliding with other similarly 
    named classes in our code. We can have the same class names across different modules.
=end


puts "''''''''''"


# Namespacing

=begin
    Another use for modules is as containers for methods.
    This allows us to group together relevant methods and use them in our code.
    For example:
=end

module MyMath
    PI = 3.14

    def self.spuare(x)
        x*x
    end
    
    def self.factorial(x)
        (1..x).inject(:*) || 1
    end
end

puts MyMath.factorial(8)

=begin
    The code above defines a module called MyMath, which includes a constant called PI, 
    and three class methods. The methods inside a module are defined as class methods 
    (note the self keyword), and we call them using the dot syntax.
    You can call the methods using two colon syntax (::) as well (MyMath::factorial(8)), 
    but the dot syntax is preferred.


    Again, the advantages of using modules to group methods includes preventing name 
    collisions, meaning that we can have the same method names across multiple modules.
=end

