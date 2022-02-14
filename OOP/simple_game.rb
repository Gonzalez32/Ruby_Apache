#  A Simple Game

=begin
    Object Oriented Programming is very useful when it comes to creating complex 
    applications, such as games.
    Let's create a simple fighting game, where two opponents will fight until 
    one of them loses.
    We start by creating our Player class:
=end

class Player
    attr_accessor :name, :health, :power
    def initialize(name, health, power)
        @name = name
        @health = health
        @power = power
    end
    def isAlive
        @health > 0
    end
    def hit(opponent)
        opponent.health -= self.power
    end
    def to_s
        "#{name}: Health: #{health}, Power: #{power}"
    end
end

=begin
    The Player class has 3 instance variables, name, health and power, and 3 instance methods:
    isAlive shows whether the player is still alive.
    hit hits the opponent (decreases the opponent's health by the amount of player's power)
    to_s outputs the player information.


    We have also defined getter and setter accessors for the instance variables using 
    the attr_accessor method.
=end



