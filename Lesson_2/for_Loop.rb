# for Loop

=begin
    The for Loop is a useful statement when you need to loop over a specific set of values, 
    for example, a range.
    The for loop consists of an empty variable and a range. At each iteration of the loop, 
    the empty variable will be assigned the corresponding element of the range.
    
    For example:
=end

for i in (1..10) 
    puts i
end

=begin
    This will output the numbers 1 to 10.
    During the first loop the variable i will be assigned the first value of the range, 1.
    On the second loop, it will be assigned to the value 2, and so on, until the end of the range.


    The for Loop executes a block of code once for each element in the range.
=end

# break

# The break statement can be used to stop a loop. 
# For Ex.

puts "================="

for i in 1..5
    break if i > 3
    puts i
end

# The loop stops executing when the condition i > 3 is met.


puts "================="


# next

=begin
    Similarly, the next statement can be used to skip one 
    iteration of the loop and continue with the next one.
    For example:
=end

for i in 0..15
    next if i %2 == 0
    puts i 
end

# This will output only the odd nums from 0 to 15 because the even nums will skip the loop iteration.

=begin
    Ruby also has the redo statement, which causes the current loop iteration to repeat.
    The retry statement causes the whole loop to start again from the beginning.
=end


# redo = repeats the current loop iteration.

puts "================="


# loop do

=begin
    Another looping statement in Ruby is the loop do statement.
    It allows code to execute until a break condition is achieved.

    For example:
=end

x = 0

loop do
    puts x
    x += 1
    break if x > 10
end