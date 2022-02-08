# Object Oriented Programming

=begin
    Ruby is a pure object-oriented language, which means everything in 
    Ruby is an object. Even simple numbers, strings and Booleans are objects.

    In programming, objects are independent units, 
    and each has its own identity, just as objects in the real world do. 
    An apple is an object; so is a mug. Each has its own unique identity. 
    It's possible to have two mugs that look alike, but they are still separate, unique objects.

    To create objects we use classes.
    A class defines the data and actions associated with an object, 
    but is separate from the object itself. In other words, 
    a class can be thought of as an object's blueprint, description, or definition. 
    For example, there can be many cat objects of the single class Cat.

    Just like in the real world, where you can use a blueprint to construct multiple buildings, 
    in programming you can use the same class as a blueprint for creating multiple objects.
=end

# Classes

=begin
    You can think of classes as basic outlines of what an object should be 
    made of and what it should be able to do. (For example, an object of 
    class Car should have a color, make and model, and be able to move).
    A class in Ruby always starts with the keyword class followed by the 
    name of the class. The name should always be in initial capitals. 
    You terminate the class definition with the keyword end.
    For example:
=end

class Person
end

# The above code creates an empty class Person.

=begin
    Now we need to define the variables and methods 
    (also called data members) of the class. 
    These data members describe the attributes of the objects 
    (for example, a person can be 42 years old and male - these attributes are data members of the class Person).
=end

puts "====="

# Classes

=begin
    There is a special initialize method available for classes which
    gets called when an object is created.
    It is defined inside a class just like any other class method:
=end

class Person
    def initialize
        puts "Hi There"
    end
end

# The initialize method is known as the constructor in other object-oriented programming languages.
