# This file has all the notes

class Customer
# the customer can change their name or age because of the accessor
    attr_accessor :name, :age

#@@all is an CLASS VARIABLE, representing and array that stores every instance
# of Customer upon creation.    

    @@all = []
   
    def initialize(name, age)
      @name = name
      @age = age
#"self" pushes the info from each customer (object) into the class variable @@alll  
      @@all << self
    end
   
    def self.all
      @@all
    end

    def new_meal(waiter, total, tip=0)
        # "self" here automatically associates each new meal
        #  with the customer that created it.
        Meal.new(waiter, self, total, tip)
    end

    def meals
      Meal.all.select do |meal|
        meal.customer == self
      end
    end
# this gets the waiter from each meal by mapping over the array of the customers meals
    def waiters
      meals.map do |meal|
        meal.waiter
      end    
    end 

  end