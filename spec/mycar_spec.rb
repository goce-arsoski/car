RSpec.describe Car::MyCar do
  it "creates instance of MyCar class" do
    bmw = Car::MyCar.new(2007, "metalic silver", "BMW", "325i")
    expect(bmw).to be_instance_of(Car::MyCar)
  end

  it "has starting speed defined to 0" do
    bmw = Car::MyCar.new(2007, "metalic silver", "BMW", "325i")
    expect(bmw.car_speed).to eq(0)
  end

  it "is driving in city" do
    bmw = Car::MyCar.new(2007, "metalic silver", "BMW", "325i")
    expect(bmw.speed_up(40)).to be_between(1, 50).inclusive
  end

  it "is driving on highway" do
    bmw = Car::MyCar.new(2007, "metalic silver", "BMW", "325i")
    expect(bmw.speed_up(120)).to be_between(50, 131).exclusive
  end
end