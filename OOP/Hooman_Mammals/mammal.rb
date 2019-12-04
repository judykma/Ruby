puts "I am in the mammal file"

class Mammal
    def breath  
        puts "Inhale and exhale"
    end
    
    def eat
        puts "Yum yum yum"
    end

    def calling_speak
        speak
    end
    
    # protected
    #     def speak
    #         puts "I am a protected method"
    #     end

    def calling_cry
        cry
    end
    
    private
        def cry
            puts "Sniff sniff..."
        end
end


class Human < Mammal # Human inherits from Mammal
    def subclass_method
        breath
        puts "This is from the 'subclass_medthod' function within human"
    end
    def another_method
        self.eat
        puts "This is from the 'another_medthod' function within human"
    end

    def explicitly_speak
        self.speak
        # puts "This is from the 'explicitly_speak' function within"
    end
    
    def implicitily_speakcopy
        speak
        # puts "This is from the 'implicitily_speakcopy' function within"
    end

    def explicitly_cry
        self.cry
    end
    
    def implicitly_cry
        cry
    end
end


# mammal = Mammal.new
# mammal.speak # => protected method `speak' called for #<Mammal:0x007fa5438183d8> (NoMethodError)
# mammal.calling_speak # => I am a protected method
# mammal.calling_cry # => Sniff sniff...
# mammal.cry # => private method `cry' called for #<Mammal:0x007fd9830de5f8> (NoMethodError)




person = Human.new
person.subclass_method
person.another_method

# person.speak # => protected method `speak' called for #<Human:0x007fedfe824710> (NoMethodError)
# person.explicitly_speak # => I am a protected method
# person.implicitily_speak # => I am a protected method

person.cry # => private method `cry' called for #<Human:0x007f8f298de248> (NoMethodError)
person.explicitly_cry # => `explicitly_cry': private method `cry' called for #<Human:0x007f87a30bf450> (NoMethodError)
person.implicitly_cry # => Sniff sniff...