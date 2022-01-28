# case Statements

=begin
    As we have seen in the previous lessons, 
    we can check for multiple conditions using 
    the if/elsif/else expression.
    A more simplified and flexible option is the case expression, 
    which tests a value in when statements.

    For example:
=end

a = 2 

case a
when 1
    puts "One"
when 2
    puts "Two"
when 3
    puts "Three"
end

# You can have as many when statements as you need for a single case.
# Note that the case expression must be closed with the end keyword.

puts "==================="


# case Statements 

=begin
    Multiple values can be tested within a single when 
    by separating the values with commas.
    For example:
=end


age = 5 

case age
when 1, 2, 3
    puts "Little baby"
when 4, 5
    puts "Child"
end 

# If you forget to put a comma between two values, Ruby will return an error.


puts "==================="


x = 8
case x
when 7, 8
  puts x+1
when 5, 6
  puts x-1
end

