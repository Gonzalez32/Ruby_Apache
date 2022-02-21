# Standard Classes

=begin
    Ruby provides a number of standard built-in classes that make our life a lot easier 
    by providing useful methods for manipulating data.
    Some of the classes in previous lessons include Array, String and Struct.
    Another useful class is the Math class, which provides methods to perform 
    mathematical operations.
    For example:
=end

# square root
puts Math.sqrt(9)

puts "------"
# pi constant
puts Math::PI

puts "------"
# trigonometry (sin, cos, tan)
puts Math::cos(0)

puts "------"


# current time
t = Time.now
puts t

puts "======"
# year, month, day
puts t.year
puts t.month
puts t.day

puts "======"
# custom date
t = Time.new(1988, 6, 10)

puts "======"
# day of week: 0 is sunday
puts t.wday

puts "======"
# day of year
puts t.yday

puts "======"