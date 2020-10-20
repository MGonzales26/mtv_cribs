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
      if unit.renter != nil
        renters << unit.renter.name
      end
    end
    renters
  end

  def average_rent
    @units.map do |unit|
      unit.monthly_rent
    end.sum / @units.count.to_f
  end

  def rented_units
    units_with_renters = []
    @units.each do |unit|
      if unit.renter != nil
        units_with_renters << unit
      end
    end
    units_with_renters
  end

  def renter_with_highest_rent
    rented_units.max_by do |unit|
      unit.monthly_rent
    end.renter
  end

  def units_by_number_of_bedrooms
    units_by_bedroom = {}
    @units.each do |unit|
      if units_by_bedroom[unit.bedrooms] == nil
        units_by_bedroom[unit.bedrooms] = [unit.number]
      else
        units_by_bedroom[unit.bedrooms] << unit.number
      end
    end
    units_by_bedroom
  end
end