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




# NOT

=begin
    The not (!) operator reverses the state of a single operand.
    The result of not true is false, and not false is true.
=end

a = 7 
puts !(a > 5)

# Here, a > b evaluates to true and then the not operator reverses it to false.


puts "-----------------"


a = 5
if !(a > 2)
  print("2")
elsif !(1 + 2 == a)
  print("3")
else
  print("4")
end

