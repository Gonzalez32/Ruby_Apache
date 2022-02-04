# Iterators

=begin
    As we have seen in the previous lessons, we can loop over arrays and hashes using for loops.
    Ruby provides more elegant looping methods called iterators. Iterators are used to create loops.
    The each iterator is one of the most used ones:
=end

arr = [2,4,6]

arr.each do |x|
    puts x
end