# Combining Arrays

# Adding two arrays together.

a = [1, 2, 3]
b = [4, 5]

res = a + b 

print res 

puts "**************"

# You can also subtract arrays, 
# which will result in the first array removing any elements that also appear in second array.

a = [1, 2, 3, 4, 5]

b = [2, 4, 5, 6]

res = a - b
# array a will remove 2, 4, 5 because array b contains 2, 4, 5, 6 

print res


=begin
    The elements of an array can be duplicated using 
    the * operator and an integer value. 
    For example: [1, 2, 3] * 3 results in [1, 2, 3, 1, 2, 3, 1, 2, 3]
=end


puts "++++++++++++++++++"

# combining Array

a = [3,7,5]

b = [1,3]

res = a - b
# res = [7,5]

puts res[0]
# This will output the first value: 7 in the res array.


puts "$$$$$$$$$$$$$"

# Boolean Operations

=begin
    The & operator returns NEW array containing 
    the elements common to the two array, 
    with no duplicates.
=end

a = [2, 3, 7, 8]

b = [2, 7, 9]

print a & b


puts '!!!!!!!!!!!!!!!!!!'

# The | operator returns a new array by joinning the arrays and removing duplicates.

a = [2,3,7,8]

b = [2,7,9]

print a | b   

puts '!!!!!!!!!!!!!!!!!!'

x = [1,2,3]

y = [3,4,5]

res = x | y

puts res[3]


puts "@@@@@@@@@@@@@@@"

# Moving Elements

# The reverse method returns a new array containing the original array elements in reverse order.

arr = [5,3,8]

res = arr.reverse

print res

puts "@@@@@@@@@@@@@@@"

# You can also reverse the array in place using the reverse! method:

arr = [1,2,3]

print arr.reverse!

=begin
    If you use the reverse method without(!) and don't save it to a new
    variable, it will just reverse it once and keep the original value.
=end

puts "@@@@@@@@@@@@@@@"

# Array Methods 

=begin
    There are a number of other useful methods available for manipulating arrays.
    Here are some of the most used ones:
    array.length or array.size returns the number of elements in array.
    array.sort returns a new array with the elements sorted
    array.uniq returns a new array with duplicate values removed from array.
    array.uniq! removes duplicates in place.
    array.freeze safeguards the array, preventing it from being modified.
    array.include?(obj) returns true if obj is present in array, false otherwise.
    array.min returns the element with the minimum value.
    array.max returns the element with the maximum value.

    Most of the methods also work for strings, 
    which can be thought of as arrays of characters.


    A for loop is one way to iterate over an array of elements:
=end

arr = ["a", "b", "c"]

for x in arr
    puts "Value: #{x}"
end

# This will loop through all the elements of the array and output them one per line.

# Ruby has a more elegant way of iterating over array elements.
# You will learn about iterators in the coming lessons.


