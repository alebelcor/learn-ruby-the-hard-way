# puts, print
#   Methods to print to standard out
#
# ""
#   Strings with double quotes can interpolate values and evaluate expressions
#
# #{foo}
#   Interpolate/evaluate the value of `foo` in a string
#
# ''
#   Strings with single quotes can't
#
# #
#   Comments start with the `#` character
#
# + - * / %
#   Operators to perform mathematical operations
#
# > >= < <=
#   Operators to perform boolean evaluations
#
# =
#   Assignment operator
#
# +
#   You can also concatenate strings with +
#
# %{foo}
#   Interpolate/evaluate the value of `foo` in a string
#   Example:
#     my_string = "%{foo} and %{bar}" % {foo: "my value", bar: "other"}
#     # "my value and other"
#
# %q{
#   Multi line
#   String
# }
#   Create a multi-line string that can interpolate values
#
# """
# Multi line
# String
# """
#   Createa a multi-line string that can interpolate values
#
# \n, \t
#   Special characters in strings, like new line and tab
#
# gets
#   Get input from standard in, including the new line character
#   `$stdin.gets` is the preferred pattern
#
# gets.chomp
#   Get input from standard in, excluding the new line character
#   `$stdin.gets.chomp` is the preferred pattern
#
# .to_i
#   Convert to an integer
#
# ARGV
#   An array representing the command line arguments passed into the script
#
# Array#first, Array#second, Array#third
#   Convenience members of all arrays to access the first, second and third item in the array
#
# foo, bar = ARGV
#   Destructing the ARGV array's first two items into `the foo` and `bar` variables
#
# open (i.e. File::open)
#   Method to open a file and return a File object
#
# File#read
#   Method to read the file
#
# File#truncate
#   Truncates the file
#
# IO#gets, IO#gets.chomp
#   Reads the next line from the IO stream
#
# IO#write
#   Writes the given string
#
# IO#seek
#   Seeks to a given offset anInteger in the stream
#
# IO#close
#   Closes ios and flushes any pending writes
#
# def
#   Keyword to start a function definition
#
# end
#   Keyword to end a function definition or block
#
# *args
#   Keyword that represents all the passed in arguments to a function represented as an array
#
# return
#   Ends execution of the current context and returns a value
