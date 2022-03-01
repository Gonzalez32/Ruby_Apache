# Creating Files

=begin
    Until now we have been performing input and output tasks using the gets and puts methods. 
    A more permanent form of input and output is files.
    Ruby allows us to easily create and work with files by using the built-in File class.
=end

file = File.new("test.txt", "w+")

=begin
    The code above creates a file named "test.txt" with the mode w+ for read 
    and write access to the file.
    Note that the file will be created in the same directory as our program.
    Now we can use our file object to perform different operations. After using a file, 
    it must be closed using the close method:
=end

file.close

# It Is necessary to close open files so they no longer continue to occupy space in memory.

