class Decorator < VisualComponent
  attr_accessor :component
  def initialize(_component)
    @component = _component
  end

  def draw
    @component.draw
  end

  def resize
    @component.resize
  end
end

class BorderDecorator < Decorator
  attr_accessor :width

  def initialize(visual_component, border_width)
    @component = visual_component
    @width = border_width
  end

  def draw
    super
    draw_border(@width)
  end

  def draw_border(number)
    puts "drow border number is #{number}"
  end
end

class ScrollDecorator < Decorator
  attr_accessor :height

  def initialize(visual_component)
    @component = visual_component
  end

  def draw
    super
    draw_scroller
  end

  def draw_scroller
    puts "drow scroller"
  end
end
