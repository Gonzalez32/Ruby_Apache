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


