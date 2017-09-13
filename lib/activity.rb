class Activity
    
    attr_reader :name, :participants, :total_cost

    def initialize(name, participants = {}, total_cost)
        @name = name
        @participants = participants
        @total_cost = total_cost
    end 

    def total_paid
        @participants.values.sum
    end 

    def cost_split
        @total_cost / @participants.length
    end 

    def amount_owed
        owed = cost_split
        
        @participants.each_key do |key|
            if @participants[key] == owed
                puts "#{key} is all set!"
            elsif @participants[key] < owed
                debt = owed - @participants[key]
                puts "#{key} owes #{debt} dollars!"
            else
                surplus = @participants[key] - owed
                puts "#{key} paid #{surplus} too much!"
            end     
        end
    end  
end
