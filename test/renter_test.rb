require 'minitest/autorun'
require 'minitest/pride'
require './lib/renter'


class RenterTest < Minitest::Test

  def test_it_exists
    renter = Renter.new("Jessie")

    assert_instance_of Renter, renter
  end
end