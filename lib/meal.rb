class Meal
    attr_reader :waiter, :customer, :total, :tips 
    @@all = [] 
    def initialize (waiter,customer,total,tips)
        @waiter = waiter
        @customer = customer
        @total = total
        @tips = tips 
        @@all << self
    end

    def self.all 
        @@all 
    end
end