class Shape
  def calculate_area
  end
end

class Rectangle < Shape
  attr_accessor :height, :width

  def calculate_area
    height * width
  end
end

class Square < Shape
  attr_accessor :side

  def calculate_area
    side * side
  end
end
