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

puts "---------"

# Parameters

=begin
    You can also leave off the parenthese when using methods.
    For example, sum(x,y) can be wirtten as sum x,y
=end

def sum x,y
    puts x+y
end

sum 6,9

# This leads to more fluid reading of code, but sometimes it can be confusing.

puts "========="

=begin
    Let's create a program that prompts the user to enter a name and
    then outputs a greeting based on the input.
=end

def greet(name="")
    if name == ""
        puts "Greetings!"
    else
        puts "Welcome, #{name}"
    end
end

# greet(gets.chomp)

=begin
    We defined a method called greet that takes one parameter and 
    outputs a message based on that parameter.
    Then we called the greet method passing user input as the argument.


    Reminder: gets.chomp is used to take user input and 
    strip the newline at the end of the input.
=end

# Quiz

def demo x=4, y=2
    puts x**y
end

demo 5

puts "======"

# Optional Parameters

# You can also define methods that take any number of arguments using the following syntax:

def someMethods(*p)
    puts p
end

someMethods(25, "Hello", true)

=begin
    Now you can pass any number of arguments to the method.
    In the code above p is an array. When you pass arguments to the method, 
    they become elements of p.

    If you call the method without any arguments, 
    the array p will be empty.
=end

    
# This technique allows optional parameters for a method, for example:

def myMethod(a, b, *c)
    #some code
end

=begin
    myMethod has two mandatory parameters and an optional one. 
    Therefore, you can pass two or more arguments to the method.
=end


puts "@@@@@"

# Returning Values

=begin
    Until now all the methods we have defined output values. 
    Sometimes you need a method to perform an action and 
    return the result so that the returned value can be used 
    further in the program (for example, by assigning the return 
    value to a variable).
    The return keyword is used to return a value from a method.

    For example:
=end

def sum a, b
    res = a+b
    return res
end

x = sum 5, 23
puts x

y = sum 10, 10
puts y 

z = sum 30, 39
puts z

# The sum method returns the sum of its parameters, which is then assigned to variable x.

puts "-----"

# returning Values

=begin
    You can return multiple values from a method by separating 
    them with commas in the return statement.
    For example:
=end

def square(a,b,c)
   return a*a, b*b, c*c 
end

arr = square 2, 3, 6
puts arr

puts "====="

=begin
    The result is an array containing the returned values.

    Even when you do not explicitly include a return statement in your method, 
    Ruby always returns the evaluated result of the last line of the method 
    that is executed.

    For example:
=end

def demo a, b
    a = b-2
    b = a-3
end

puts demo 5, 6

puts demo 10, 11

=begin
    Any code in the method after a return statement will not execute, 
    because a method stops executing once the return is executed.
    For example:

    def demo(a)
    a = 5
    return a
    a = 9
    end

    The method above will return the value 5. 
    The statement a=9 is ignored.  
=end

puts "----"

# Chaining Methods

=begin
    Because all methods return a value, we can chain multiple 
    methods together, as well as chain methods with iterators.
    For example:
=end

def sqr x
    x*x
end

sqr 4.times {puts "HI"}

=begin
    In the code above we chained our defined square method with the times iterator.
    As square(4) will return 16, the loop will run and output "Hi" 16 times.


    If anywhere along the chain there is a nil or an error, 
    the entire chained call will break down.
=end

puts "==="

# Methods as Arguments

=begin
    We can also pass methods as arguments to other methods. 
    The returned values of those methods will be used as the 
    actual values for the arguments, for example:
=end

def add a, b
    a+b
end

def mult a, b
    a*b
end

x = mult(add(2, 3), add(4, 7))
puts x

# We defined two methods, add and mult, and passed two calls to the add method as arguments to mult.

