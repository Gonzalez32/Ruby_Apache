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