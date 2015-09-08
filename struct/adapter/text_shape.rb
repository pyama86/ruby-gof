class TextShape
  include Shape

  def initialize
    @_text = TextView.new
  end

  def bounding_box(bottom_left, top_right)
    # 与えられた座標を解釈する
    bottom = Coord.new(bottom_left.y)
    left   = Coord.new(bottom_left.x)
    height = Coord.new(top_right.y)
    width  = Coord.new(top_right.x)

    # テキストボックスの座標とサイズを取得する
    @_text.get_origin(bottom, left)
    @_text.get_extent(width, height)

    # 新たな座標を設定する
    bottom_left.set_point(bottom, left)
    top_right.set_point(bottom + height, left + width)

  end

  def create_manipulator
    TextManipulator.new(self)
  end

  def is_empty
    @_text.is_empty
  end
end
