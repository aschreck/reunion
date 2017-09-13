class Reunion
    attr_reader :location
    attr_accessor :activities
    
    def initialize(location, activities)
        @location = location
        @activities = []
    end 

    def add_activity(activity)
        @activities << activity
        
    end 
end
