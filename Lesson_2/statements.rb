# if Statements

=begin
    You can use an if expression to execute code when a certain 
    condition holds.
    If a conditional expression evaluates to true, 
    the if code is carried out. Otherwise, the code is ignored.
=end

# a = 42

# if a > 7 
#     puts "Yes"
# end

# if Statements

=begin
    if expressions can be nested, one inside the other.
    This means that the inner if is the code part of the outer one. 
    This is one way to see whether multiple conditions are satisfied. 
    Keep in mind that once an if condition fails, 
    the entire block is exited.
=end

# num = 16
# if num > 7
#     puts "Greater than 7"
#     if num < 42
#         puts "Between 7 and 42"
#     end
# end
# puts "--------------"

# num = 8 
# if num > 4
#     puts "4"
#     if num < 7
#         puts "7"
#         if num == 8 
#             puts "8"
#         end
#     end
# end


puts "---------------"

soccer_balls = 10

if soccer_balls > 5
    puts "There is about #{soccer_balls} soccer balls."
    if soccer_balls < 7 
        puts "7 indeed mate!"
        if soccer_balls == 8
            puts "Where is the soccer balls!"
        end
    end
end


puts "---------------"

# else Statements

=begin
    An else block in an if expression contains code 
    that is called when the if conditional evaluates to false.
    For example:
=end 

age = 15
if age > 18
    puts "Welcome"
else
    puts "Too Young"
end

=begin
    The end keyword is only needed for the if statement,
    as the else block is part of the if expression.
=end

# elseif Statements

=begin
    The elsif (short for else if) block is useful when you
    want to test multiple conditions.
    A series of if elsif expressions can have a 
    final else block, which is called if none of the 
    if or elsif expressions are true.
=end
puts "-------------------"


num = 1

if num == 3 
    puts "Number is 3"
elsif num == 10
    puts "Number is 10"
elsif num == 7
    puts "Number is 7"
else
    puts "Not found"
end 

puts "--------------------"


#unless

=begin
    The unless expression is the opposite of an if expression.
    It executes code when a conditional is false.
=end

a = 42
unless a < 10
    puts "Yes"
else
    puts "No"
end


puts "--------------------"

a = 42
# This code before the if executes only if the condition evaluates to true.
puts "Yes" if a > 10
# The code before the unless execute only if the condition is false.
puts "Yes" unless a < 10


# unless 

x = 5
unless x < 8
    x += 3
else
    x += 2 
end

puts x

# 7 is the output
