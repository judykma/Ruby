require_relative 'human'
# require_relative 'samurai'
# require_relative 'ninja'

class Wizard < Human
    def initialize
        super
        @health = 50
        @intelligence = 25
    end
    def heal
        @health += 10
        puts "Wizard's health has increased."
    end
    def fireball target
        target.health -= 20
        puts "Wizard casts a fireball!"
    end
    def stats
        puts "Health: #{@health}"
        puts "Intelligence: #{@intelligence}"
    end
end
Gandalf = Wizard.new
Harry = Wizard.new
Gandalf.fireball Harry
Harry.heal
Harry.stats
# Harry.attack Jack