# your code goes here


class Person

attr_reader :name
attr_writer :bank_account
attr_accessor :bank_account
attr_accessor :happiness, :hygiene, :salary

    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
        @salary = 0
    end

    def happiness=(num)

        @happiness = num.clamp(0, 10)

    end

    def hygiene=(num) 

        @hygiene = num.clamp(0, 10)

    end

    def happy?
        if @happiness > 7
            true
        else
            false
        end
    end

    def clean?
        if @hygiene > 7
            true
        else
            false
        end
    end

    def get_paid(salary)
        @salary = salary
        @bank_account += @salary
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

    def call_friend(name)
        self.happiness += 3
        name.happiness += 3
        "Hi #{name.name}! It's #{self.name}. How are you?"

    end

    def start_conversation(name, topic)

        if topic == "politics"
            self.happiness -= 2
            name.happiness -= 2
            "blah blah partisan blah lobbyist"
        elsif
            topic == "weather"
            self.happiness += 1
            name.happiness += 1

            "blah blah sun blah rain"
        else
        
        "blah blah blah blah blah"

        end
    end
            

  




end
