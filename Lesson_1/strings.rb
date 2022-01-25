# Strings

=begin
    As mentioned in the previous lessons, a string is text 
    between single or double quotation marks.
    However, some characters can't be directly included in a string. 
    For instance, single quotes can't be directly included in a single quote string, 
    because this would designate the end of the string. Characters like these can be included 
    in a string by using an escape sequence, which is indicated by a backslash (\)
=end

text = 'Ruby\'s syntax is fun'

puts text


puts '000000000000000'

# A string formed with double quotation marks can also include the \n escape sequence, which represents a new line.

ex_text = "Hello \n World"

puts ex_text

# String Interpolation

=begin 
    You can embed any Ruby expression inside a double 
    quote string using #{ }, just as you did with variable names. 
    Ruby evaluates the placeholders and replaces them with values:
=end

a = 5 
b = 2

puts "The sum is #{a+b}"

# Concatenation

=begin
    Strings can be joined using the + 
    in a process called concatenation.
    When concatenating strings, it doesn't matter whether they've 
    been created with single or double quotes.
=end 

a = "Hi"
b = ' there'

puts a + b

# Repeating a String

=begin 
    Strings can be repeated using the * and an integer value.
    The order of the string and the integer does matter: 
    the string has to come first.
=end

a = "abc"
puts a * 3

puts '45' * 4

# Strings can't be multiplied by other strings.

