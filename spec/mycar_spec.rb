RSpec.describe Car::MyCar do
  let(:bmw) { Car::MyCar.new(2007, "metalic silver", "BMW", "325i") }

  it "creates instance of MyCar class" do
    expect(bmw).to be_instance_of(Car::MyCar)
  end

  it "has starting speed defined to 0" do
    expect(bmw.car_speed).to eq(0)
  end

  it "is driving in city" do
    bmw.speed_up(40)
    expect(bmw.car_speed).to be_between(1, 50).inclusive
  end

  it "is driving on highway" do
    bmw.speed_up(120)
    expect(bmw.car_speed).to be_between(50, 131).exclusive
  end

  it "is speeding up" do
    bmw.speed_up
    expect(bmw.car_speed).to eq(Car::MyCar::SPEED_OFFSET)
  end

  it "is speed up by default" do
    bmw.speed_up
    expect(bmw.car_speed).to eq(Car::MyCar::SPEED_OFFSET)
  end

  it "is slowing down" do
    bmw.slow_down(20)
    expect(bmw.car_speed).to be_between(-50, 50).inclusive
  end

  it "is slowing down by default" do
    bmw.slow_down
    expect(bmw.car_speed).to eq(-Car::MyCar::SPEED_OFFSET)
  end

  it "is changing color to" do
    bmw.spray_paint :blue
    expect(bmw.color).to eq(:blue)
  end

  it "has no defects" do
    expect(bmw.defects).to be_empty
  end

  it "adds defects" do
    bmw.add_defect("water pump")
    expect(bmw.defects).to include("water pump")
  end

  it "list of defects" do
    bmw.add_defect("water pump")
    bmw.add_defect("oil leak")
    bmw.add_defect("oil level sensor")
    expect(bmw.service_info).to include("Defects need to be repaired: water pump, oil leak, oil level sensor.")
  end
end