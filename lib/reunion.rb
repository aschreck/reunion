class Reunion
    attr_reader :location
    attr_accessor :activities
    
    def initialize(location, activities)
        @location = location
        @activities = [activities]
    end 

    def add_activity(activity)
        @activities << activity
    end 

    def total_cost
        @activities.inject(0) {|sum, activity| sum + activity.total_cost}
    end 

end
