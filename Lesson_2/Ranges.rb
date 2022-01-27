# Ranges.rb

=begin
    A range represents a sequence. 0 to 10, 56 to 82, and a to z are all examples of ranges.
    Ruby has special operators to create ranges with ease.
    These are the ''..'' and ''...'' range operators. The two-dot form creates an inclusive range, 
    while the three-dot form creates a range that excludes the specified high value.
    
    For example:
=end

a = (1..7).to_a

puts a 

puts "------------------"

b = (79...82).to_a

puts b

puts "------------------"

c = ("a".."g").to_a

puts c

puts "------------------"

# to_a method is used to convert a range to an array, so we can output it.



# ranges can be used in case statements for when values. For Example:

age = 42

case age
when 0..14
    puts "Child"
when 15..24
    puts "Young"
when 25..64
    puts "Old Fart"
else
    puts "Jedi Fart"
end

puts "================"

x = 8

case x
when 0...8
  puts "1"
else
  puts "2"
end
