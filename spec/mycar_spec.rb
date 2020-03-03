RSpec.describe Car::MyCar do
    it "creates instance of MyCar class" do
        bmw = Car::MyCar.new(2007, "metalic silver", "BMW", "325i")
        expect(bmw).to be_instance_of(Car::MyCar)
    end

    it "has starting speed defined to 0" do
        bmw = Car::MyCar.new(2007, "metalic silver", "BMW", "325i")
        expect(bmw.car_speed).to eq(0)
    end
end