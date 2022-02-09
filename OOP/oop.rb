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

# class Person
# end

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

# class Person
#     def initialize
#         puts "Hi There"
#     end
# end

# The initialize method is known as the constructor in other object-oriented programming languages.


# Objects

=begin
    After the class and the initialize methods are defined, 
    we can create objects of that class by using the new method. 
    The method new is predefined in the Ruby library and 
    does not need to be added to your class definition.
    Below is an example that creates two objects p1 and p2 of the class Person:
=end

# class Person
#     def initialize
#         puts "Hi there"
#     end
# end

# p1 = Person.new
# p2 = Person.new

=begin
    Note the syntax for calling new: the class name followed by a dot and followed by the method name.
    The code above outputs "Hi there" twice because we created two objects of the class, 
    which each call the initialize method. Now, p1 and p2 are separate objects of the class Person.

    Objects are also called instances of a class. 
    The process of creating objects of a class is called instantiation.


    Note that in computing objects aren't always representative of physical
    items. For example, a programming object can represent a date, a time, and a bank account. 
=end


# Instance Variables

=begin
    An instance variable is one type of variable defined in a class.
    Each object of a class has a separate copy of the instance variables.
    Instance variables are preceded by the at sign (@) followed by the variable name (for example: @name)
    We can, for example, pass a parameter to the initialize method and assign it to an instance variable for a new object:
=end

class Person
    def initialize(name)
        @name = name
    end
end

=begin
    In the code above, @name is an instance variable for the class Person.
    Now, we can create objects of that class and pass an argument to the new method:
=end

p1 = Person.new("David")
p2 = Person.new("Amy")
p3 = Person.new("Carlos")

puts p1, p2, p3

=begin
    The object p1 now has an instance variable @name with the 
    value "David" which relates only to the object p1.
    Similarly, @name for the object p2 is equal to "Amy".
    Each instance (object) of a class has its own unique instance 
    variables that store values associated with that instance.


    You might wonder why we don't use local variables instead 
    of instance variables. We need instance variables 
    because their scope is the entire object, meaning that they are 
    accessible inside all the methods for the object, opposed to local variables,
    which are accessible only within the scope they are declared, such as a single method.
=end