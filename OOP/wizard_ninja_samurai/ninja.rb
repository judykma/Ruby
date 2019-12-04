require_relative 'human'
require_relative 'samurai'
# require_relative 'wizard'

class Ninja < Human
    def initialize
        super
        @stealth = 175
    end
    def steal target
        @health += 10
        self
    end
    def get_away
        @health -= 15
        puts "You escaped into the shadows!"
    end
    def attack target
        super
    end
end
Naruto = Ninja.new
Naruto.steal Jack
Naruto.attack Jack