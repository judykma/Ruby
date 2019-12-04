require_relative 'human'
require_relative 'wizard'
# require_relative 'ninja'


class Samurai < Human
    @@how_many = 0
    def initialize
        super
        @health = 200
        @@how_many += 1
    end
    def death_blow target
        target.health = 0
        puts "Samurai dealt a death blow to #{target}"
    end
    def meditate
        @health = 200
        puts "Ommmmmm..."
    end
    def self.how_many   #can only be invoked by the class name, not the instance
        puts @@how_many
    end
    def attack target
        super
    end
end
Jack = Samurai.new
Hanzo = Samurai.new
Jack.meditate
Jack.death_blow Harry
Samurai.how_many
puts Harry.health
Jack.attack Harry