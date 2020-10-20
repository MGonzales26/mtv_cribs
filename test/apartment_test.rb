require 'minitest/autorun'
require 'minitest/pride'
require './lib/renter'
require './lib/apartment'

class ApartmentTest < Minitest::Test

  def test_it_exists
    apartment = Apartment.new({number: "A1", 
                               monthly_rent: 1200, 
                               bathrooms: 1, 
                               bedrooms: 1})

  assert_instance_of Apartment, apartment                               
  end
end