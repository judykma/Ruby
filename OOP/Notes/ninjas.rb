class Ninja
    attr_accessor :f_name, :l_name, :village, :specific_attack, :taunt
    def initialize (f_name, l_name="defaultLastName", village, specific_attack, taunt)
        @f_name=f_name
        @l_name=l_name
        @village=village
        @specific_attack=specific_attack
        @taunt=taunt
        @fight_won=0
        @fight_lose=0
    end

    def introduce
        # puts self
        puts "Hello! My name is #{@l_name} #{@f_name}"
    end

    def village
        puts "I am from the #{@village}"
    end

    def attack target
        puts "#{@f_name} says '#{@taunt}' and uses #{@specific_attack} on #{target.f_name}"
        # @f_name = target
    end

    def winFight numWins
        @fight_won += numWins
        self
    end
    
    def loseFight numLoses
        @fight_lose += numLoses
    end

    def show_stats
        puts @f_name
        puts "Fight Record: #{@fight_won} - #{@fight_lose}"
        puts "Finishing move used: #{@specific_attack}"
    end

end
Naruto = Ninja.new("Naruto", "Uzumaki","Hidden Leaf","Rasengan", "Believe it!!!")
Gaara = Ninja.new(f_name="Gaara", village="Sand", specific_attack="Sand Burial",taunt="I fight for my sake only.")
Sasuke = Ninja.new(f_name="Sasuke", l_name="Uchiha", village="Hidden Leaf", specific_attack="Chidori",taunt="Revenge is the only option.")

Naruto.introduce
Gaara.attack(Naruto)
# Gaara.winFight(3)
# Gaara.loseFight(1)
Naruto.winFight(3).winFight(1)
Naruto.show_stats
Gaara.introduce