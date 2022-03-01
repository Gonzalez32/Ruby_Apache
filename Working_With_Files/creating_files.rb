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



# File Modes

=begin
    Ruby supports the following file modes:
    r read-only, starts at beginning of file (default mode).
    r+ read-write, starts at beginning of file.
    w write-only, truncates existing file to zero length or creates a new file for writing.
    w+ read-write, truncates existing file to zero length overwriting existing data or creates a new file for reading and writing.
    a write-only, appends to end of file if file exists, otherwise creates a new file for writing.
    a+ read-write, appends or reads from end of file if file exists, otherwise creates a new file for reading and writing.

    When the open mode is read only, the mode cannot be changed to writable. Similarly, 
    the open mode cannot be changed from write only to readable.
=end


# Opening Files

# To open an existing file you use the File class open method:
file = File.open("filename", "w+")

# As with the new method, the second argument of the open method specifies the mode.