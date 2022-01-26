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