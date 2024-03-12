require 'car_class'

RSpec.describe Car do
    let(:my_car) {Car.new("Ford", "F-150", 2022, "Gray")}

    describe "#initialize" do
        it "creates a new car" do
            expect(my_car.make).to eq("Ford")
            expect(my_car.model).to eq("F-150")
            expect(my_car.year).to eq(2022)
            expect(my_car.color).to eq("Gray")
            expect(my_car.speed).to eq(0)
        end
    end

    describe "#accelerate" do
        it "increases car's speed" do
            my_car.accelerate(25)
            expect(my_car.speed).to eq(25)
        end
    end

    describe "#brake" do
        it "decreases car's speed" do
            my_car.accelerate(25)
            my_car.brake(25)
            expect(my_car.speed).to eq(0)
        end
    end

    describe "#display_speed" do
        it "shows car's speed" do
            my_car.accelerate(25)
            expect {my_car.display_speed}.to output("The current speed of the Gray Ford F-150 is 25 mph.\n").to_stdout
        end
    end
end