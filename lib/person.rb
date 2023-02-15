class Person
    # Define instance variables
    attr_reader :name, :happiness, :hygiene
    attr_accessor :bank_account
  
    # Define constructor
    def initialize(name)
      @name = name
      @bank_account = 25
      @happiness = 8
      @hygiene = 8
    end
  
    # Define custom getter and setter for happiness
    def happiness=(value)
      # Ensure value is within the range of 0 to 10
      @happiness = if value < 0
                     0
                   elsif value > 10
                     10
                   else
                     value
                   end
    end
  
    # Define custom getter and setter for hygiene
    def hygiene=(value)
      # Ensure value is within the range of 0 to 10
      @hygiene = if value < 0
                   0
                 elsif value > 10
                   10
                 else
                   value
                 end
    end
  
    # Define clean? method
    def clean?
      hygiene > 7
    end
  
    # Define happy? method
    def happy?
      happiness > 7
    end
  
    # Define get_paid method
    def get_paid(amount)
      self.bank_account += amount
      "all about the benjamins"
    end
  
    # Define take_bath method
    def take_bath
      self.hygiene += 4
      "♪ Rub-a-dub just relaxing in the tub ♫"
    end
  
    # Define work_out method
    def work_out
      self.happiness += 2
      self.hygiene -= 3
      "♪ another one bites the dust ♫"
    end
  
    # Define call_friend method
    def call_friend(friend)
      self.happiness += 3
      friend.happiness += 3
      "Hi #{friend.name}! It's #{self.name}. How are you?"
    end
  
    # Define start_conversation method
    def start_conversation(friend, topic)
      case topic
      when "politics"
        self.happiness -= 2
        friend.happiness -= 2
        "blah blah partisan blah lobbyist"
      when "weather"
        self.happiness += 1
        friend.happiness += 1
        "blah blah sun blah rain"
      else
        "blah blah blah blah blah"
      end
    end
  end
  