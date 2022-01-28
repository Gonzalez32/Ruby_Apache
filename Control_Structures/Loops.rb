# Loops

=begin
    Loops are used to execute the same block of code a specified number of times.
    The while loop executes a block of code while its condition is true.
    For example:
=end

x = 0

while x < 50
    puts x
    x += 1
end


puts "================"

# until Loops

=begin
    The until loop is the opposite of a while loop: 
    it will run while its condition is false.
=end

a = 0

until a > 10
    puts "a = #{a}"
    a += 2
end

puts "================"

x = 15

until x <= 10
  puts x
  x -= 2
end

