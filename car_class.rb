class Car
    attr_reader :make, :model, :year, :color, :speed

    def initialize(make, model, year, color)
        @make = make
        @model = model
        @year = year
        @color = color
        @speed = 0
    end

    def accelerate(increment)
        @speed += increment
    end

    def brake(decrement)
        @speed -= decrement
    end

    def display_speed
        puts "The current speed of the #{color} #{make} #{model} is #{@speed} mph.\n"
    end
end

my_car = Car.new("Ford", "F-150", 2022, "Gray")

puts "My car is a #{my_car.year} #{my_car.color} #{my_car.make} #{my_car.model}."

my_car.accelerate(30)
my_car.display_speed

my_car.brake(10)
my_car.display_speed