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


