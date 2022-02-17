# Modules

=begin
    Extracting common methods to a superclass, like we did in the 
    previous section, is a great way to model concepts that are naturally 
    hierarchical (a Cat is an Animal which is a Mammal).
    Another way of grouping methods together are modules.
    A module is a collection of methods that can be used in other classes 
    (think about them as libraries providing common functionality).
    Modules are defined using the module keyword followed by the module name, 
    which should start with a capital letter.
    For example:
=end

module Flyable
    def fly
        puts "I'm flying!!!"
    end
end

# A module called Flyable, which includes one method called fly.
# A module can include as many methods as you want.

