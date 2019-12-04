class Human
    attr_accessor :strength, :intelligence, :stealth, :health
    def initialize#(strength = 3, intelligence = 3, stealth = 3, health = 100)
        @strength = 3
        @intelligence = 3
        @stealth = 3
        @health = 100
    end
    def attack(opponent)
        if opponent.class.ancestors.include?(Human)
            opponent.health -= 10
            puts "ATTACK!!"
        end
        self
    end
end
Judy = Human.new