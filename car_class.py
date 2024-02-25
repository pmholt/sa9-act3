# It has been a while since 2150 I can't find the original prompt.

class Car:
    def __init__(self, make, model, year, color):
        self.make = make
        self.model = model
        self.year = year
        self.color = color
        self.speed = 0
    
    def accelerate(self, increment):
        self.speed += increment
    
    def brake(self, decrement):
        self.speed -= decrement
    
    def display_speed(self):
        print(f"The current speed of the {self.color} {self.make} {self.model} is {self.speed} mph.")


# Example usage
my_car = Car("Ford", "F-150", 2022, "Gray")

print(f"My car is a {my_car.year} {my_car.color} {my_car.make} {my_car.model}.")

my_car.accelerate(30)
my_car.display_speed()

my_car.brake(10)
my_car.display_speed()
