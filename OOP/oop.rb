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

# class Person
#     def initialize(name)
#         @name = name
#     end
# end

=begin
    In the code above, @name is an instance variable for the class Person.
    Now, we can create objects of that class and pass an argument to the new method:
=end

# p1 = Person.new("David")
# p2 = Person.new("Amy")
# p3 = Person.new("Carlos")

# puts p1, p2, p3

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

# Instance Variables

# A class can have multiple instance variables. For example:

class Animal
    @age = 0
    def initialize(name, age)
        @name = name
        @age = age
    end
end

object = Animal.new("Jacky", 4)

# A class can have multiple instance variables.

# quiz

class Test
    def initialize num
      puts num%2
    end
end

a = Test.new 9

# Instance Methods

puts "===="

=begin
    In the real world, objects behave in their own way. A car moves, 
    a phone rings, and so on.
    The same applies to programming objects. Behavior is specific to 
    the object's type and is defined by methods in the class.
    You can declare instance methods that are available to an object 
    of the class.

    For example:
=end

class Dog
    def bark
        puts "Woof!"
    end
end

=begin
    We defined a method called bark that outputs text.
    Now we can instantiate an object and call the method using the dot syntax:
=end

d = Dog.new
d.bark

# As with any methods, instance methods can inculde multiple parameters and return values.

# What 
# class box
#     def initialize(w, h)
#         @width = w
#         @height = h
#     end
    
#     def area
#         @width * @height
#     end
# end

puts "---"


# Instance Methods and Accessors

=begin
    An instance method can also be created to access the instance 
    variables from outside of the object.
    For example, if we want to access the @name instance variable 
    for a Person object, we need a method that returns the value of that variable:
=end

# class Person
#     def initialize name
#         @name = name
#     end
#     def get_name
#         @name
#     end
#     def set_name=(name)
#         @name = name
#     end
# end

# p = Person.new("David")
# p.set_name = "Bob"
# puts p.get_name


=begin
    We created an instance method get_name that returns the value 
    of the @name instance variable and then called it for our object p.

    Getter and setter methods are called accessors.
    The method that is used to retrieve the value of the variable is 
    called a getter method (get_name in our example).
    The method that is used to modify the value of the variable is 
    called a setter method.
=end    

puts "----"

# Instance Methods and Accessors

=begin
    Getter methods are used to access the instance variable. 
    If we want to change the value of the instance variables, we need setter methods.
    Ruby provides a special syntax for defining setter methods: 
    the method name is followed by an equal sign (=).

    For example:
=end

# class Person
#     def initialize name
#         @name = name
#     end
#     def get_name
#         @name
#     end
#     def set_name=(name)
#         @name = name
#     end
# end

# p = Person.new("David")
# p.set_name = "Bob"
# puts p.get_name

=begin
    In the code above, set_name is a setter method that sets the 
    value of the @name instance variable to the value of its parameter name.
    Notice the special syntax used when calling the method: 
    p.set_name = "Bob".
    Normally to call a method, you would use p.set_name=("Bob"), 
    where the entire set_name= is the method name, and the string "Bob" 
    is the argument being passed into the method.
    However, for setter methods, Ruby allows us to use a more natural 
    assignment syntax: p.set_name = "Bob".


    When you see this code, just realize there's a method 
    called set_name= working behind the scenes.
=end

# Quiz 
# Setter Methods

# class Dog
#     def set_age=(age)
#         @age = age
#     end
# end

# valid setter method for the "age" instance variable.


# Accessors

=begin
    In Ruby it is a common practice to name the getter and 
    setter methods using the same name as the instance variable 
    they are accessing.
    The previous example can be rewritten as:
=end

# class Person
#     def intitialize(name)
#         @name = name
#     end
#     def name
#         @name
#     end
#     def name=(name)
#         @name = name
#     end
# end

# p = Person.new("David")
# p.name = "Boob"
# puts p.name


puts "----"


# Accessors

=begin
    Imagine having a lot of instance variables and their setter 
    and getter methods. The code would be really long.
    Ruby has a built-in way to automatically create these getter 
    and setter methods using the attr_accessor method.
    The attr_accessor method takes a symbol of the instance variable 
    name as an argument, which it uses to create getter and setter methods.
    We can do the following:
=end

# class Person

#     attr_accessor :name

#     def initialize(name)
#         @name = name
#     end
# end

# p = Person.new("David")
# p.name = "BOB"
# puts p.name

=begin
    That one line replaced two accessor method definitions.
    Ruby also provides the attr_reader and attr_writer methods in 
    case only a getter or setter method is needed for the instance variable.

    We can pass multiple symbols to the 
    attr_accessor, attr_reader and attr_writer methods. 
    
    For example: attr_accessor :name, :height, :weight
=end

# Accessors

# The accessor methods can be called inside the class by using the self keyword.
# For example:

class Person
    attr_accessor :name, :age
    def initialize(name, age)
        @name = name
        @age = age
    end
    def change(n, a)
        self.name = n
        self.age = a
    end
    def show_info
        puts "#{self.name} is #{self.age}"
    end
end

p = Person.new("David", 30)
p.change("Juan", 28)
p.show_info

=begin
    In the code above, we define a method called change that changes the 
    instance variables via their accessor methods. The show_info method 
    outputs the values of the instance variables.
    
    
    self represents the current object and is used to call the instance 
    methods and accessors of the object.
    One of the benefits of using self is for disambiguation. 
    For example, if you have a variable and a method both called name, 
    self.name would make it clear that you are referring to the method.
=end

puts "------"

#Class Methods

=begin
    Class methods are methods we can call directly on the class itself, 
    without having to instantiate any objects.
    This can be useful when there is no logical need to create an 
    object of the class, such as when a class is used to group similar 
    methods and functionality (like mathematical operations).
    One example is a Math class that includes a square method for returning 
    the square of its parameter. There is no logical need to create 
    an object of the Math class just to call the method. 
    This is where class methods come into play.
    Class methods are defined using the self keyword:
=end

class Person
    def self.info
        puts "A Person"
    end
end

# Now, the method is a class method and can be called directly from the class, without the need of an object:

Person.info

puts "@@@@@"

=begin
    Class variables are accessible to every object of a class. 
    A class variable belongs to the class, not the objects.
    You declare a class variable using two @ signs, for example @@name.
    We can, for example, keep count of all Person objects created using a 
    class variable:
=end

class Person
    @@count = 0
    def initialize
        @@count += 1
    end
    def self.get_count
        @@count
    end
end

p1 = Person.new
p2 = Person.new

puts Person.get_count

=begin
    In the code above, @@count is a class variable. Since the initialize 
    method is called for every object that is created, incrementing the 
    @@count variable will keep track of the number of objects created.
    We also defined a class method called get_count to return the value 
    of the class variable.
    In the code above, we have created two objects of the Person class 
    so the value of the @@count variable is 2.
    
    
    Class variables are usually used when you need information about 
    the class, not the individual objects.
=end

puts "@@@@@"

# Class Constants

=begin
    A class can also contain constants. Remember, constant variables 
    do not change their value and start with a capital letter. 
    It is common to have uppercase names for constants, as in:
=end

class Calc
    PI = 3.14
end

# You can access constants using the class name, followed by two colon symbols(::) and the constant name, for example:

puts Calc::PI

puts "********"



# The to_s Method

# to_s method comes built-in with all classes. It gets called when you output the object.
# For example:

# class Person
#     # some code
# end
# p = Person.new
# puts p

=begin
    When we call puts p, Ruby automatically calls the to_s method for the object p, so puts p is the same as puts p.to_s

    By default, the to_s method prints the object's class and an encoding of the object id.
=end

puts "====="

=begin
    We can define our own to_s method for a class and add custom implementation to it.
    For example, we can generate an informative, formatted output for our Person class:
=end

class Person
    def initialize(n, a)
        @name = n
        @age = a
    end
    def to_s
        "#{@name} is #{@age} years old."
    end
end

p = Person.new("David", 28)
puts p 

puts "---"

# The to_s method also gets called when the object is used as a value in a string, like "#{p}"

=begin
    Defining the to_s method makes it easier and shorter to output the information of an object in the format needed, as opposed to defining a custom method and calling it from an object.
    When you define the to_s method you call puts on your object (puts obj), where with a custom method you have to explicitly call it from the object (puts obj.info).
=end


puts "%%%%%%"


# Inheritance

=begin
    Inheritance is when a class receives, or inherits, attributes and behavior from another class. The class that is inheriting behavior is called the subclass (or derived class) and the class it inherits from is called the superclass (or base class).
    Imagine several classes, Cat, Dog, Rabbit and so on. Although they may differ in some ways (only Dog might have the method bark), they are likely to be similar in others (all having color and name).
    This similarity can be expressed by making them all inherit from a superclass Animal, which contains the shared functionality.
    The < symbol is used to inherit a class from another class.
    For example:
=end

# class Dog < Animal
#     # some code
# end

# In the code above, Dog is the subclass and Animal in the superclass.


puts "---"

# Inheritance

# Now, lets define the Animal and Dog classes:

# class Animal

#     def initialize(name, color)
#         @name = name
#         @color = color
#     end

#     def speak
#         puts "HOLA"
#     end
# end

# class Dog < Animal
# end

=begin
    Dog is a subclass of Animal so it inherits Animal's methods and attributes, 
    making code like this possible:
=end

# d = Dog.new("Bobby", "brown")
# d.speak

=begin
    Now Dog has all the methods and attributes of the Animal class, 
    which is why we can instantiate the object and call the speak method.
=end


# Inheritance

# The subclass can also have its own mehtods and attributes. Let's define a Cat class and inherit it from the same Animal class.

class Animal

    def initialize(name, color)
        @name = name
        @color = color
    end

    def speak
        puts "HOLA"
    end
end

# class Dog < Animal
# end

class Cat < Animal
    attr_accessor :age
    
    def speak
        puts "Meow! >.<"
    end
end

c = Cat.new("Lucy", "white")
c.age = 2
c.speak

=begin
    In the code above, Cat inherits from Animal. 
    It has an instance variable age and also defines its own speak method. 
    This is called method overriding, because the speak method in Cat overrides, 
    or replaces, the one in the Animal class.

    When we called the speak method for our Dog object, its superclass method was 
    called because Dog did not override it.
    The Cat object called its own speak method, because it defined its own 
    implementation.
=end


puts "===="


=begin
    Inheritance


    Inheritance is a great way to remove duplication in your code by writing the shared and common functionality in the superclass and then adding individual functionality in the subclasses.
    You can have multiple levels of inheritance, for example:

    class Animal
    end
    class Mammal < Animal
    end
    class Dog < Mammal
    end
    

    Here, Dog inherits from Mammal, which inherits from Animal.
    This can be described as an "is a" relationship because a Dog is a Mammal, 
    which is an Animal. This is an example of single inheritance with multiple levels of hierarchy.

    However, Ruby does not support multiple inheritance, meaning you cannot inherit 
    a class simultaneously from multiple classes. (A class cannot have multiple superclasses)
    To achieve that behavior, Ruby supports mixins. We will learn about them in the next module.
=end



# Super

=begin
    Ruby has a built-in method called super, which is used to call methods from the superclass.
    When you call super in a method of the subclass, the method of the same name gets called from the superclass.
    For example:
=end

# class Animal
#     def speak
#         puts "HOLA"
#     end
# end

# class Cato < Animal
#     def speak
#         super
#         puts "MEOW"
#     end
# end

# =begin
#     super calls the speak method of the Animal class.
#     Now, if we create an object of class Cat and call 
#     its speak method, we will get the following:
# =end

# p = Cato.new
# p.speak

=begin
    The use of super allows us to remove duplicate code by 
    using and extending the behavior of the superclass in our subclasses.
=end

# Super

=begin
    super is more commonly used in the initialize method.
    For example, our superclass has a initialize method that 
    takes one argument and initializes an instance variable:  
=end

class Animal
    def initialize(name)
        @name = name
    end
end

=begin
    Now, we need a subclass Cat that also has an @age instance variable, and 
    we need to define its own initialize method. Instead of repeating ourselves, 
    and setting the name instance variable in the Cat class, 
    we can use its superclass with the super method as follows:
=end

class Cat < Animal
    def initialize(name, age)
        super(name)
        @age = age
    end
    def to_s
        "#{@name} is #{@age} years old."
    end
end

=begin
    We passed one of the arguments to the super method, which calls the 
    initialize method of the Animal class and sets the @name instance variable.
    Now we can instantiate an object and output its info:
=end

c = Cat.new("Bob", 3)
puts c

=begin
    In the example we used super for a simple assignment. 
    Imagine having a complex program with complex calculations and 
    operations being carried out. That's where the real benefits 
    of "not repeating yourself" come in, and calling the super where 
    applicable is one way of achieving it.
=end


# Operator Overloading

=begin
    Ruby allows us to overload operators so that we can perform operations
    such as adding two objects together.
    Let's say we have a class Shape, which has width and height properties. 
    We want to be able to add together two Shape objects and, as a result, 
    get a new object that has its width and height equal to the sum of the 
    corresponding properties of the objects.
    All we need to do is define the corresponding operator as a method:
=end

class Shape
    attr_accessor :h, :w
    def initialize(h, w)
        self.h = h
        self.w = w
    end

    def +(other)
        Shape.new(self.h+other.h, self.w+other.w)
    end

end

a = Shape.new(7, 4)
b = Shape.new(9, 18)
c = a+b

puts c.h

puts c.w

=begin
    As you can see, the + method takes one argument, which is another Shape 
    object, and returns a new Shape object with the corresponding values.

    
    You can override almost all operators in Ruby and have any custom logic 
    defined in the corresponding method.
=end