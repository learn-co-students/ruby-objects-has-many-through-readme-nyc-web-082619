class Customer
    @@all = []

  def initialize (name,age)
    @name = name
    @age = age 
    @@all << self 
  end

  def self.all
    @@all
  end

  def new_meal(waiter,total,tips)
    Meal.new(waiter,self,total,tips)
  end

  def meals
    Meal.all.select do |meal|
        meal.customer == self 
    end
  end

  def waiters 
    self.meals.map do |meal|
        meal.waiter 
    end
  end

end