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


puts "-------"


# Procs

=begin
    Procs are very similar to methods. They perform operations and can include parameters.
    What make Procs really powerful and unique is the ability to pass them into methods, 
    because procs are actually objects.
    For example:
=end

greet = Proc.new do |y|
    puts "Welcome #{y}!"
end

goodbye = Proc.new do |z|
    puts "Goodbye #{z}!"
end

def say(arr, proc)
    arr.each { |x| proc.call x }
end
    
=begin
    We have defined two procs and a method, that takes an array and a proc as its parameters. 
    For each item in the array it calls the proc. Now, greet and goodbye are objects that 
    contain the corresponding blocks of code.
    We can call the say method and pass our proc objects as parameters:
=end

people = ["David", "Amy", "John"]
say(people, greet)
say(people, goodbye)

# We can pass to our methods as many procs as we WANT.

=begin
    Using procs gives the added flexibility to be able to reuse code blocks in more 
    than one place without having to type them out every time. Procs basically take 
    blocks of code and embed them in an object, allowing them to be reused and passed around.
=end