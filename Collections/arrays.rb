# Arrays

=begin
    An Array is essentially a list of numbered items.
    The items are declared in a comma-separated list and
    enclosed in square brackets.
    
    For example:
=end

puts "++++++++++++++++++++++"

items = ["Apple", "Orange", "Banana"]

=begin
    The code above declares an array named items containing three strings.

    Each item has its own unique index with the first item at index zero.
    To refer to an item, we need to refer to its index:
=end

puts items[0]

puts "======================="

# You can assign any array element a new value by using its index:

# items[1] = "Kiwi"

puts items


puts "======================="

# Arrays

# An array can contain different types of elements:

arr = [5, "Dave", 15.88, false]

puts arr[0], arr[1], arr[-1]


puts "======================="


# To add new elements to the array, you can use the << operator.


arr << 10

puts arr


puts "======================="


=begin
    This will add an element with the value 8 to the end of the array.
    Alternatively, you can use the push and insert methods 
    (we will learn more about methods in the coming module. 
    For now, just remember that a method is code that performs an action).
=end

arr.push(3)

puts arr


puts "======================="


# This will add 8 to the end of the array.

# The insert method allows you to insert the element at the desired position:

arr.insert(2, 8)

puts arr

# The code above will insert an element with value 8 at the position with index 2.

puts "#######################"


# Quiz Adding Elements 

a = [2, 6, 9]

a << 3
# 3 is being added at the end of the array.
a[1] += a[0]
# value 6 is being added with value 2, which = 8
puts a[1]
# On line 92 we solve the output is 8, since we are running the code the output is 8.


puts "#######################"


# REMOVING ELEMENTS

=begin
    Similarly, there are pop and delete_at methods available
    to remove elements from the array.

    The pop method removes the last element of the array.

    For example:
=end

array = [1, 2, 3]

array.pop

print array

# puts method output one element per line, while print actually outputs brackets and a list of items.


puts "%%%%%%%%%%%%%%%%%%%%%%%%%"


# You can use the delete_at method to specify the index of the elements to be removed:

arr = [2, 4, 6, 8]

arr.delete_at(2)

print arr


puts "%%%%%%%%%%%%%%%%%%%%%%%%%"

# Array Ranges

# You can even access a range within the array using the range operators:

nums = [6, 3, 8, 7, 9]

print nums[1..3]


# Array Ranges Quiz
nums = [4,7,5,2]

nums.delete_at(1)
# In nums array value 7 will be deleted.
nums << 3
# value 3 will be added at the end of the array.
# nums = [4,5,2,3]
x = nums[2..3]

puts x[0]
# output will be 2 since x = nums[2..3] and x[0] will be the first value in the array.


