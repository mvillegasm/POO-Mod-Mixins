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
  def initialize(model, year)
    super
    
  end

end
