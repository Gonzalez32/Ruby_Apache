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

=end