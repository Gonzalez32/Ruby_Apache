# Procs

=begin
    Ruby provides the ability to take a block of code, wrap it up in an object 
    (called a proc), store it in a variable, and run the code in the block 
    whenever you feel like (more than once, if you want).
    For example:
=end

greet = Proc.new do |x|
    puts "Welcome #{x}"
end

=begin
    We created a Proc that takes a parameter and outputs a greeting, 
    and assigned it to the greet variable.
    We run the code in the proc using the call method.
=end

greet.call "David"
greet.call "Amy"

# The code between the do and end keywords can include any number of operations.

