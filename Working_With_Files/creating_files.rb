# Creating Files

=begin
    Until now we have been performing input and output tasks using the gets and puts methods. 
    A more permanent form of input and output is files.
    Ruby allows us to easily create and work with files by using the built-in File class.
=end

# file = File.new("test.txt", "w+")

# =begin
#     The code above creates a file named "test.txt" with the mode w+ for read 
#     and write access to the file.
#     Note that the file will be created in the same directory as our program.
#     Now we can use our file object to perform different operations. After using a file, 
#     it must be closed using the close method:
# =end

# file.close

# # It Is necessary to close open files so they no longer continue to occupy space in memory.



# # File Modes

# =begin
#     Ruby supports the following file modes:
#     r read-only, starts at beginning of file (default mode).
#     r+ read-write, starts at beginning of file.
#     w write-only, truncates existing file to zero length or creates a new file for writing.
#     w+ read-write, truncates existing file to zero length overwriting existing data or creates a new file for reading and writing.
#     a write-only, appends to end of file if file exists, otherwise creates a new file for writing.
#     a+ read-write, appends or reads from end of file if file exists, otherwise creates a new file for reading and writing.

#     When the open mode is read only, the mode cannot be changed to writable. Similarly, 
#     the open mode cannot be changed from write only to readable.
# =end


# # Opening Files

# # To open an existing file you use the File class open method:
# file = File.open("filename", "w+")

# # As with the new method, the second argument of the open method specifies the mode.


# puts "===="


# # Writing Files

# =begin
#     The puts and write methods can be used for writing content to a file.
#     The difference between the two is that puts adds a line break to the end of strings, 
#     while write does not.
#     For example:
# =end

# file = file.new("test.txt", "w+")
# file.puts("some text")
# file.close

# # Remember to close the file after performing the file operations.


# =begin
#     If we want to write to an existing file, we can use a block of code to perform 
#     the write operation.
#     With this code Ruby will automatically close the file.
#     For example:
# =end

# File.open("file.txt", "w+") {
#     |file| file.puts("some text")
# }

# # This shorter way makes sure the file closes at the end of the block.


# # Reading Files

# # To read the entire contents of a file the File.read method can be used. 
# # For Ex:

# f = File.new("test.txt", "w+")
# f.puts("a line of text")
# f.puts("another line of text")
# f.close

# puts File.read("test.txt")



# Reading Files

# We can also read the file contents line-by-line using the readlines mehtod.
# for Ex:

File.open("test.txt", "a+") {
    |x| x.puts("a line of text")
    x.puts("another line of text!")
}

File.readlines("test.txt").each {
    |line| puts "--- #{line}"
}

=begin
    The readlines method reads the entire file based on individual 
    lines and returns those lines in an array.
=end



puts "==="



# Deleting Files

# we can delete a file using the File.delete method.
# For Ex:

# File.delete("test.txt")

# Be careful, as this command deletes the file permanently.



=begin
    When working with files, it is important to first check if the file exists in 
    order to prevent an error.
    The file? method provides an easy way of checking if the file exists.
    For example:

        File.open("test.txt") if File.file?("text.txt")
    
    The code above tests whether a file exists before opening it.

    File.file? returns true if the file exists, and false if it does not.
=end

