# Letter Frequency

=begin
    Let's create a program that will count the frequency of letters 
    (number of occurrences) in a given string.
    First we need a string:

    # a sample text
    text = "I am learning Ruby and it is fun!"

    text.downcase!
    
    The downcase! method is used to convert all 
    letters in the string to lowercase.

    Next, we will need a hash to hold the letters as keys and the frequency
    of the letters as their corresponding values.
    For that we need to create an empty hash and set the 
    default value for all values to 0.

    freqs = {}
    freqs.default = 0
    
    The default method is used to set the default value for the hash, 
    meaning that any key that does not have a value assigned will be 
    set to that value.
=end 