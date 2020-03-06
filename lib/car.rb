require "car/version"

module Car
  class MyCar
    SPEED_OFFSET = 15

    attr_accessor :color, :car_speed
    attr_reader :year, :defects

    def initialize(year, color, brand, model)
      @year = year
      @color = color
      @brand = brand
      @model = model
      @car_speed = 0
      @defects = []
    end

    def speed_up(speed = SPEED_OFFSET)
      @car_speed += speed
    end

    def slow_down(speed = SPEED_OFFSET)
      @car_speed -= speed
    end
    def spray_paint(arg)
      @color = arg
    end

    def add_defect(defect)
      @defects << defect
    end

    def service_info
      aux = @defects.join(', ')
      "Defects need to be repaired: #{aux}."
    end
  end
end