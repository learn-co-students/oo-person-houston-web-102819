class Person

    def initialize(person_name)
        @name = person_name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end    

    def name
        @name
    end

    def bank_account=(value)
        @bank_account = value
    end

    def bank_account
        @bank_account
    end

    def happiness
        @happiness
    end

    def happiness=(value)
        if value > 10
            @happiness = 10
        elsif value < 0
            @happiness = 0
        else
            @happiness = value

        end
    end

    def hygiene
        @hygiene
    end

    def hygiene=(value)
        if value > 10
            @hygiene = 10
        elsif value < 0
            @hygiene = 0
        else
            @hygiene = value
        end        
    end

    def happy?
        @happy = @happiness > 7
    end
    
    def clean? 
        @clean = @hygiene > 7
    end




end    
