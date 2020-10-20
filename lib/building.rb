class Building
  attr_reader :units

  def initialize
    @units = []
  end

  def add_unit(apartment)
    @units << apartment
  end

  def renters
    renters = []
    @units.each do |unit|
      renters << unit.renter.name
    end
    renters
  end
end