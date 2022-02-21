# Structs

=begin
    In some cases, there is no need for defining a fully structured class. 
    Sometimes we need just a group of attributes bundled together 
    (for example, defining points in a 2D space using x and y coordinates).
    We could, of course, create a separate class with all the instance variables 
    and methods, but Ruby provides a shortcut to bundle a number of attributes 
    together called a Struct
=end
        
Point = Struct.new(:x, :y)

=begin
    In the code above, Point is a Struct, having two attribute accessors: x and y. 
    Struct automatically creates its initialize method for the defined accessors, 
    so now we can use Points just like a class, instantiating different objects from it.
=end

origin = Point.new(0, 0)
dest = Point.new(15, 42)

puts dest.y

# Struct is a built-in Ruby class and makes it shorter to define simple classes, accessors, and their initialize methods.


puts "-----"


# OStruct

=begin
    OpenStruct (or OStruct) acts very similarly to Struct, except that it doesn't 
    have a defined list of attributes.
    To use OStruct, we need to include the corresponding library using the 
    require statement.
=end

require "ostruct"

person = OpenStruct.new
person.name = "Juancho dezz nutzzz"
person.age = 100
person.salary = 500

puts person.name
puts person.age
puts person.salary

# As you can see, we can define any number of attributes on the fly.

# OStruct isn't as fast as Struct! But it is more FLEXIBLE.


puts "++++"


# Ostruct

# We can also initialize an OStruct using a hash. For Ex...

require "ostruct"

person = OpenStruct.new(name:"Juan", age:28, salary:300)

puts person.name


# Struct and OStruct provide a simple way to create data structures that have the behavior of a class.


