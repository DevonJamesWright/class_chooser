class Race
    attr_accessor :name, :details
    @@all  = []
    def initialize(name,details)
        @name = name 
        @details =  details
        save 
    end 
    def save 
        @@all << self
    end 
    def self.all
        @@all 
    end 
end 