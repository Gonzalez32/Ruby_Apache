# Iterators

=begin
    As we have seen in the previous lessons, we can loop over arrays and hashes using for loops.
    Ruby provides more elegant looping methods called iterators. Iterators are used to create loops.
    The each iterator is one of the most used ones:
=end

arr = [2,4,6]

arr.each do |x|
    puts x
end

puts "^^^^^^^^^^^^^^"

=begin
    The syntax might seem confusing at first, 
    but you just need to remember the pipe symbols around the variable. 
    The each iterator loops through all elements of the array and 
    assigns the corresponding element to the variable inside 
    the pipes with each iteration. 
    This variable is called the block parameter.

    We can, for example, calculate the sum of all elements:
=end

arr = [2,4,6]
sum = 0

arr.each do |x|
    sum += x
    # Here the output will loop and add each iteration element of the array. In this case it will be [2+4=6 + 6 = 12]!
end

puts sum