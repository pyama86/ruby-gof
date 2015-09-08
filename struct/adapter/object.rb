module Shape
  def initialize; end
  def bounding_box(bottom_left, top_right); end
  def create_manipulator; end
end

class TextView
  def initialize; end
  def get_origin(x, y)
    x*=2
    y*=2
  end

  def get_extent(width, height)
    width = 100
    height = 200
  end

  def empty?; end
end

class Coord
  def initialize(pos)
    @_pos = pos
  end

  def +(other)
    @_pos += other.to_i
    self
  end

  def *(other)
    @_pos *= other.to_i
    self
  end

  def to_i
    @_pos
  end
end

class Point
  attr_accessor :x, :y
  def initialize(x, y)
    set_point(x, y)
  end

  def set_point(x, y)
    @x = x.to_i
    @y = y.to_i
  end
end

class TextManipulator
  def initialize(obj)
    @obj = obj
  end
end
