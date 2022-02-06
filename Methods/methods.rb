# Methods

=begin
    In the previous lessons we have seen some examples of 
    methods, such as the reverse method for arrays.
    A method is a set of statements that perform a specific task.
    You can define your own methods to perform your desired tasks.
    The def keyword is used to define a method.
=end

def say
    puts "HI"
end


# The above code defines a method called "say" that performs a simple output operation, printing "HI".

# The method name should start with a lowercase letter, so it will not be confused with constants.

# Now that we have defined our method, we can call it by including its name in a line of code.
say

# you can call methods as many times as you need:
say
say
say

# Methods should be defined before calling them, otherwise Ruby will raise an error.
# You can also call methods inside other methods.


puts "-----------"


# PARAMETERS

=begin
    A method declaration can include parameters, 
    which you define inside parentheses after the method name.
    
    For example:
=end

def sqr(x)
    puts x*x
end

sqr(8)

=begin
    The defined sqr method has one parameter (called x) and 
    outputs its square. You can name your parameters anything you like.
    When calling the method, we "pass" the actual parameter
    value to the method using parentheses.
=end

# The actual parameter value is called an argument.
# So, in the above example, x is the parameter of the method, while 8 is the argument.

