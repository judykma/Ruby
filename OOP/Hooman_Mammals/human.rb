puts "I am in the hooman class"
require_relative 'mammal'

class Human < Mammal # Human inherits from Mammal
    def subclass_method
        breath
    end
    def another_method
        self.eat  
    end

    def explicitly_speak
        self.speak
    end
    
    def implicitily_speak
        speak
    end
end
person = Human.new
person.subclass_method
person.another_method
