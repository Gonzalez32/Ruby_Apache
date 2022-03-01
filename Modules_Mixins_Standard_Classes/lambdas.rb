# Lambdas

=begin
    Lambdas are a variation of Procs. A lambda is actually an instance of the Proc class.
    To create a lambda in Ruby, you use the following syntax:
=end

talk = lambda {puts "Hola"}

# Alternatively, the following syntax can be used:

talk = ->() {puts "Hola"}

# Just like with procs, you can use the call method to execute the lambda:

talk.call

# In other programming languages, a lamdba is commonly referred to as an anonymous funciton.

puts "===="


# What is the output of this code?

a = lambda{|x| x * 3}
puts a.call 6

# Output: will be 18
# 6 * 3 = 18


puts "===="


=begin
    Lambdas as very similar to procs. However, there are some important differences.
    The first difference between procs and lambdas is how arguments are handled.
    Lambdas check the number of arguments, while procs do not.
    For example:
=end

talk = lambda { |x| puts "Hola #{x}" }
talk_proc = Proc.new { |x| puts "Hello #{x}" }

talk.call "Juan"

talk_proc.call "Bob"

=begin
    As you can see, the lambda and proc worked the same way, when the number of arguments is correct.
    However, if we try to call them with incorrect number of arguments:
    
        talk_proc.call
        # output Hello

        talk.call
        # output "Error: wrong number of arguments (given 0, expected 1")

    As you can see, when a lambda expects an argument, you need to pass those arguments or 
    an Error will occur. However, in the case of the Proc, 
    if the argument is not passed it automatically defaults to nil.


    A second difference between a lambda and a Proc is how the return statement is handled.
    When a lambda encounters a return statement it returns execution to the enclosing method.
    However, when a Proc encounters a return statement it jumps out of itself, 
    as well as the enclosing method.

=end



