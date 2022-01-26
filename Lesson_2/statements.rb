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