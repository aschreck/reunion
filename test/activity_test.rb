require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/activity'

class ActivityTest < Minitest::Test
    
    def setup
        Activity.new('Fencing', {'Joe' => 30, 'Sally' => 40, "Bill" => 50}, 120)
    end 
   
    def test_activity_has_name
        activity = setup
        
        assert_equal 'Fencing' , activity.name
    end 

    def test_activity_has_participants
        activity = setup
        
        assert_equal 30, activity.participants['Joe']
        assert_equal 40, activity.participants['Sally']
    end 

    def test_can_add_up_total_cost
        activity = setup
        
        assert_equal 120, activity.total_paid
    end 

    def test_it_has_total_cost 
        activity = setup
        
        assert_equal 120, activity.total_cost
    end 

    def test_it_can_split_cost_of_activity
        activity = setup

        assert_equal 40 ,activity.cost_split
    end 
        
    def test_it_can_tell_who_has_paid_what
        activity = setup
        
        activity.amount_owed
    end 
end

