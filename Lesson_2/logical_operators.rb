# logical Operators

=begin
    Logical operators are used to form more complex criteria that test 
    more than one condition for an if expression.
    Ruby has three logical operators: and (&&), or (||), and not (!).
    A conditional using and evaluates as true if, and only if, 
    both of its operands are true. Otherwise, the entire conditional evaluates to false.
=end

a = 42
b = 8

if a > 7 && b < 11
    puts "Yes"
end

=begin
    Ruby can use words instead of the logical operator symbols 
    (and, or, not), but those have lower precedence and are 
    generally avoided.
=end

puts "#################"

# OR

=begin
    The or (||) operator evaluates to true if either (or both) of its operands are true, 
    and false if both operands are false.
    For example:
=end

a = 3
b = 5
if a == 3 || b > 10
    puts "Welcome"
end


puts "#################"


a = 5 
if a > 6 || a < 8
    puts a / 2
else
    puts a
end 


puts "#################"


