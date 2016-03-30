class Animal
    
    attr_reader :name, :age, :breed
    
    def name=(value)
        if value == ""
            raise "Name can't be blank!"
        end
        @name = value
    end
    
    def age=(value)
        if value < 0
            raise "An ago of #{value} isn't valid!"
        end
        @age = value
    end
    
    def breed=(value)
        if breed==""
            raise "Breed cannot be blank"
        end
        @breed = value
    end
    
    def move(destination)
        puts "#{@name} runs to the #{destination}."
    end
    
    def talk
        puts "#{@name} says Bark!"
    end
    
    def report_age
        puts "#{@name} is #{@age} years old."
    end
    
    def report_breed
        puts "#{@name} is a #{@breed}."
    end
end

class Dog < Animal
end
class Bird < Animal
end
class Cat < Animal
end


