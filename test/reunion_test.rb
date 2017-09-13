require 'minitest'
require 'minitest/test'
require 'minitest/autorun'
require './lib/reunion'

class ReunionTest < Minitest::Test
    

    def test_reunion_has_a_location
        fencing = Activity.new('Fencing', {'Joe' => 30, 'Sally' => 40, "Bill" => 50}, 120)
        reunion = Reunion.new("ballroom", fencing)

        assert_equal 'ballroom', reunion.location
    end

    def test_reunion_can_add_activities
        fencing = Activity.new('Fencing', {'Joe' => 30, 'Sally' => 40, "Bill" => 50}, 120)        
        boating = Activity.new('Boating', {'Joe' => 30, 'Sally' => 40, "Bill" => 50}, 120)
        reunion = Reunion.new("ballroom", fencing)
        
        reunion.add_activity(boating)
        
        assert_equal 2, reunion.activities.length
    end 

    def test_reunion_can_add_its_total_cost
        fencing = Activity.new('Fencing', {'Joe' => 30, 'Sally' => 40, "Bill" => 50}, 120)        
        boating = Activity.new('Boating', {'Joe' => 30, 'Sally' => 40, "Bill" => 50}, 120)
        reunion = Reunion.new("ballroom", fencing)
        reunion.add_activity(boating)

        assert_equal 240, reunion.total_cost

    end 
end

