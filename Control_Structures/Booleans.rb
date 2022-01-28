# booleans

=begin 
    If you try to evaluate a value other than true or false as 
    a Boolean, Ruby will automatically treat it as a Boolean.
    When this is done, a non-Boolean value that evaluates 
    to true is called "truthy" and a non-Boolean value that 
    evaluates to false is called "falsey".

    In Ruby only false and nil are falsey. 
    Everything else is truthy (even 0 is truthy). 


    Only true and false are Booleans. 
    nil is not a Boolean. 0 is not a Boolean. 
    The string "Hello" is not a Boolean. 
    However, in a context where a Boolean is expected, 
    Ruby evaluates them as Boolean (truthy and falsey).
=end 

# As a Boolean, the string "false" is: truthy!


# Comparison

=begin 
    A Boolean comparison using the == operator returns true 
    when two operands are equal, and false when they are not:
=end

# a = 5 
# b = 8 

# puts a == b 

# puts a == 5 

=begin
    Another comparison operator, the not equal operator (!=), 
    evaluates to true if the items being compared aren't equal, 
    and false if they are.
    For example:
=end

# a = 8
# b = 7 

# puts a != b 

# What is the output of this code?

# a = 7 
# b = a/2

# puts b == (a-4)


# Comparison Operators

=begin
    Ruby also has operators that determine whether one value is 
    greater than or less than another. 
    These operators are > and < respectively. Similarly, 
    the greater than or equal to, and less than or equal 
    to operators are >= and <=.
=end 

# puts 12 > 8

# puts 5 < 2 

# puts 5 >= 5.0

# puts 3 <= 6 


=begin
    There is also the .eql? method, which results in true 
    only if both arguments have the same type and equal values.
=end

puts 3 == 3.0 

puts 3.eql?(3.0)
# 3.eql?(3.0) is false because 3 is an integer and 3.0 is a float.