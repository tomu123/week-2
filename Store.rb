require './Vehicle'
require './Extras'

class Store
  @vehicles = []
  class << self
    def list
      @vehicles
    end

    def add(vehicle)
      raise ArgumentError unless vehicle.is_a? Vehicle

      @vehicles << vehicle unless @vehicles.include?(vehicle)
    end

    def remove(vehicle)
      raise ArgumentError unless vehicle.is_a? Vehicle

      @vehicles.delete(vehicle)
    end

    def print_detail(vehicle, extras)
      raise ArgumentError unless (vehicle.is_a? Vehicle) && (extras.is_a? Extras)

      puts <<~DETAIL
        #{vehicle}

        ------------------------------------------------------------
        #{extras.list}

        ------------------------------------------------------------
            Total: $#{format('%.2f', (vehicle.price + (extras.reduce(0) { |total, extra| total + extra.price } || 0)))}
      DETAIL
    end
  end
end

extras = Extras.new
extras.import(option: 3, price: 900)
extras.import(option: 1, price: 500)
extras.import(option: 0, price: 64)

Vehicle.build_batch.each do |v|
  Store.add(v)
  Store.print_detail(v, extras)
end
