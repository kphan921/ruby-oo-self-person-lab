require "pry"

class Person
  attr_reader :name, :happiness, :hygiene
  attr_accessor :bank_account

  def initialize(name, bank_account = 25.00, happiness = 8, hygiene = 8)
    @name = name
    @bank_account = bank_account
    @happiness = happiness
    @hygiene = hygiene
  end

  def happiness=(point)
    point < 0 ? @happiness = 0 : point > 10 ? @happiness = 10 : @happiness = point
  end

  def hygiene=(point)
    point < 0 ? @hygiene = 0 : point > 10 ? @hygiene = 10 : @hygiene = point
  end

  def clean?
    @hygiene > 7
  end

  def happy?
    @happiness > 7
  end

  def get_paid(salary)
    @bank_account += salary
    "all about the benjamins"
  end

  def take_bath
    # self.hygiene= (@hygiene + 4)

    self.hygiene += 4
    "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    self.happiness += 2
    self.hygiene -= 3
    "♪ another one bites the dust ♫"
  end

  def call_friend(friend)
    self.happiness += 3
    friend.happiness += 3
    "Hi #{friend.name}! It's #{self.name}. How are you?"
  end

  def start_conversation(person, topic)
    if topic == 'politics'
        [self, person].each{|p| p.happiness-=2}
        # self.happiness -= 2
        # person.happiness -= 2
        "blah blah partisan blah lobbyist"
    elsif topic == 'weather'
        [self, person].each{|p| p.happiness+=1}
        # self.happiness += 1
        # person.happiness += 1
        "blah blah sun blah rain"
    else
        "blah blah blah blah blah"
    end

  end

end
