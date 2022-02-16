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


# Simple Game

# With the Player class defined, we can now define a method to make two opponents fight:

def fight(p1, p2)
    while p1.isAlive && p2.isAlive
        p1.hit(p2)
        p2.hit(p1)
        show_info(p1, p2)
    end

    if p1.isAlive
        puts "#{p1.name} WON!"
    elsif p2.isAlive
        puts "#{p2.name} WON!"
    else
        puts "TIE!"
    end
end

def show_info(*p)
    p.each { |x| puts x }
end

=begin
    The fight method uses a loop to make the players hit each other until the isAlive 
    method returns false for one of them. After each iteration, the information of 
    both players is output to the screen using the show_info method we defined.


    Once the loop is over (meaning one of the opponents has lost), 
    we check and output the corresponding result.
=end


# A Simple Game

a, b = 8, 3
while a > 2
  a -= b
end
puts a
# Output is 2


