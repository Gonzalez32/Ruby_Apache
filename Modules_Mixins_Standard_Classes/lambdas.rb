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

