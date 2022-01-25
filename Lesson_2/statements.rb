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

num = 16
if num > 7
    puts "Greater than 7"
    if num < 42
        puts "Between 7 and 42"
    end
end

