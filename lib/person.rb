class Person

    attr_accessor :bank_account
    attr_reader :name

    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end

    def min_max(value)
        if value > 10
            return value = 10
        elsif value < 0
            return value = 0
        end
        value
    end

    def happiness=(happiness)
        @happiness = min_max(happiness)
    end

    def happiness
        @happiness
    end

    def hygiene=(hygiene)
        @hygiene = min_max(hygiene)
    end

    def hygiene
       @hygiene
    end

    def happy?
        if happiness > 7
            true
        else
            false
        end
    end

    def clean?
        if hygiene > 7
            true
        else
            false
        end
    end

    def get_paid(salary)
        @bank_account += salary
        "all about the benjamins"
    end

    def take_bath
        self.hygiene += 4
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.hygiene -= 3
        self.happiness += 2
        "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        self.happiness += 3
        friend.happiness += 3
        "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(person_for_convo, topic)
        if topic == "politics"
            self.happiness -= 2
            person_for_convo.happiness -= 2
            "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            self.happiness += 1
            person_for_convo.happiness += 1
            "blah blah sun blah rain"
        else
            "blah blah blah blah blah"
        end
    end

end

#person1 = Person.new("Bob")

#person1.hygiene = person1.hygiene - 5
#person1.call_friend(person1)