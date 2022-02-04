# Hashes

=begin
    Hashes (sometimes known as associative arrays, maps, or dictionaries) 
    are similar to arrays in that they are an indexed collection of elements.
    However, while you index arrays with integers, you can index a hash with 
    anything.
    That is very useful when you want to map values, 
    for example: "name" => "David". Here, "name" is the index (also called the key) which is mapped 
    to the value "David". So, hashes represent key=>value pairs.
    A hash is created with comma separated keys and values 
    inside curly brackets:
=end

ages = {"David" => 28, "Amy" => 19, "Rob" => 42}

puts ages["Amy"]

# As you can see, the values are accessd using the same index syntax as with an array.


# Symbols 

=begin
    In the previous example we used strings as keys for the hash, 
    but Ruby has a more elegant and faster way for creating and accessing hash indexes than using strings.
    Symbols are similar to strings, but they are immutable, meaning that they cannot be changed.
    A symbol is created using a colon and a name, 
    for example:
    
        a = :id

    In the code above :id is a symbol. 
    You can also think of :id as meaning the name of the variable id, 
    and plain id as meaning the value of the variable.


    So why use symbols instead of strings? 
    Using symbols not only saves time when doing comparisons, 
    but also saves memory, because they are only stored once.
=end


puts "++++++++++++++++"


# HASHES & SYMBOLS

# Uses of symbols includes using them as hashes keys.
# For examples:

h = {:name=>"Dave", :age=>28, :gender=>"male"}

puts h[:age]


puts "$$$$$$$$$$$$$$"


# In the code above, symbols are used as keys for our hash.
# A shorter way of writing the same code as above is the following:

h = {name: "Dave", age:28, gender:"male"}

puts h[:age]


# In other programming languages hashes are called associative arrays or dictionaries.



puts "!!!!!!!!!!!!!!"


# HASHES

=begin
    There are useful methods available for manipulating hashes:
    hash.delete(key) removes the key-value pair from hash by key.
    hash.key(value) returns the key for the given value in hash, 
    nil if no matching value is found.
    hash.invert creates a new hash, reversing keys and values from hash; 
    that is, in the new hash, the keys from hash become values and values become keys.
    hash.keys returns a new array with keys from hash.
    hash.values returns a new array containing all the values of hash.
    hash.length returns the length of hash as an integer.

    For example:
=end

car = {brand:"BMW", year:2026, color:"RED", length:206}

car.delete(:length)

puts car.values


puts "-----------"

# quiz

h = {a:'b', b:'a'}

h = h.invert
# Here will changes the K & V pairs with the hash.
res = h.keys
# Here will output the keys which will be b and a.
puts res[0]
# This will output the first value in the index which is b!
