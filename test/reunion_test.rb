require 'minitest'
require 'minitest/test'
require 'minitest/autorun'
require './lib/reunion'

class ReunionTest < Minitest::Test
    def setup
        #fencing = Activity.new('Fencing', {'Joe' => 30, 'Sally' => 40, "Bill" => 50}, 120)
        reunion = Reunion.new("ballroom")
    end 

    def test_reunion_has_a_location
        reunion = setup

        assert_equal 'ballroom', reunion.location
    end

    def test_reunion_can_add_activities
        reunion = setup
        fencing = Activity.new('Fencing', {'Joe' => 30, 'Sally' => 40, "Bill" => 50}, 120)        
        boating = Activity.new('Boating', {'Joe' => 30, 'Sally' => 40, "Bill" => 50}, 120)
        reunion.add_activity(boating)
        reunion.add_activity(fencing)
        
        assert_equal 2, reunion.activities.length
    end 
end

