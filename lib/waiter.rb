class Waiter
    @@all = []
    def initialize(name, years_of_experience)
      @name = name
      @years_of_experience = years_of_experience
      self.class.all << self
    end
  
    def self.all
      @@all
    end

    def new_meal(customer, total, tip)
        Meal.new(self, customer, total, tip)
      end
    
      def meals
        Meal.all.select{|meal| meal.waiter == self}
      end
    
      def best_tipper
        tip_order = meals.sort_by{|meal|meal.tip}
        tip_order[-1].customer
      end

  end