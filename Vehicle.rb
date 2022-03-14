require 'faker'

class Vehicle
  attr_reader :id, :wheels_number, :color, :brand, :price

  def initialize(params)
    @id = params[:id]
    @wheels_number = params[:wheels_number]
    @color = params[:color]
    @brand = params[:brand]
    @price = params[:price]
  end

  def self.build_batch
    vehicles = []
    5.times do |_x|
      wheels_number = (self == Car ? 4 : rand(3..18))
      vehicles << new(id: Faker::Vehicle.vin, wheels_number: wheels_number, color: Faker::Vehicle.color, brand: Faker::Vehicle.make,
                      price: Faker::Commerce.price(range: 10_000..120_000))
    end
    vehicles
  end

  def ==(other)
    raise ArgumentError unless other.is_a? Vehicle

    id == other.id
  end

  def to_s
    <<~VEHICLE
      Detail:

          Quote for the car: #{id}

          Features

          color: #{color}

          brand: #{brand}

          wheels: #{wheels_number}

          price: $#{'%.2f' % price}
    VEHICLE
  end
end

class Car < Vehicle
end

class Truck < Vehicle
end
