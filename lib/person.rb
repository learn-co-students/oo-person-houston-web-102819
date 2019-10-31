class Person
  def initialize(name)
    @name = name
    @bank_account = 25
    @happiness_points = 8
    @hygiene_points = 8
  end
  
  def name
    @name
  end

  def bank_account
    @bank_account
  end

  def bank_account=(x)
    @bank_account += x
  end

  def happiness
    @happiness_points
  end

  def happiness=(x)
    if x > 10
      @happiness_points = 10
    elsif x < 0
      @happiness_points = 0
    else
      @happiness_points = x
    end
  end

  def hygiene
    if @hygiene_points > 10
      return @hygiene_points = 10
    end
    @hygiene_points
  end

  def hygiene=(x)
    if x > 10
        @hygiene_points = 10
    elsif x < 0
        @hygiene_points = 0
    else
        @hygiene_points = x
    end
    return @hygiene_points
  end

  def clean?
    @hygiene_points > 7
  end

  def happy?
    @happiness_points > 7
  end

  def get_paid(salary)
    @bank_account += salary
    "all about the benjamins"
  end

  def take_bath
    @hygiene_points = hygiene=(@hygiene_points + 4)
    if @hygiene_points > 10
      @hygiene_points = 10
    end
    #"♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    @happiness_points = happiness=(2)
    @hygiene_points = hygiene=(-3)
    "♪ another one bites the dust ♫"
  end

end


alex = Person.new("alex")
alex.hygiene = 3
p alex.take_bath 
