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

puts "#######"

# Parameters

def a(b)
    puts b/2
end 

a(9)

# print 9 / 2


puts "!!!!!!"


# Multiple Parameters

# A method can include multiple parameters, separated by commas.

def sum(a,b)
    puts a+b
end

sum(10,10)

sum(88, 164)


puts "__________"


# You can also pass variable arguments:

def sum(a,b,c)
    puts a+b+c
end

x = 2
y = 42
z = 6

sum(x,y,z)

puts '_________'

# Default Parameters

=begin
    You can also set default values for the parameters, 
    so that the method will still work even if you do not provide all the arguments.
    For example:   
=end

def sum(a, b=8)
    puts a+b
end

=begin
    Now our parameter b has a default value of 8.
    If we pass just one argument, the method will use 
    the value 8 as the second argument:
=end

x = 5
sum(x)

=begin
    We can also pass two arguments as before, 
    and the method will work as expected. 
    The default value only comes into play when no 
    value for that argument is provided.
=end