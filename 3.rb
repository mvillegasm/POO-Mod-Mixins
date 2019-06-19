# Se tiene la clase Vehicle que recibe como argumento un modelo y un año. El método engine_start
# enciende el vehículo.

# class Vehicle
#   def initialize(model, year)
#     @model = model
#     @year = year
#     @start = false
#   end
#   def engine_start
#     @start = true
#   end
# end

class Vehicle
  def initialize(model, year)
    @model = model
    @year = year
    @start = false
  end
  def engine_start
    @start = true
  end
end

class Car < Vehicle
  @@counter = 0
  def initialize(model,year,patente)
    super(model,year)
    @@counter += 1
    @patente = patente
  end
  def self.total
    @@counter
  end
  def engine_start
    super
    "El motor se ha encendido"
  end
  def specs
    "Soy el auto modelo #{@model} del año #{@year}"
  end
end

new_car = Car.new('Corsa', 2020,'kk2020')
# puts Car.total
puts new_car.specs
10.times do |i|
  Car.new("Modelo#{i}",2019,"Patente#{i}")
end
puts Car.total
