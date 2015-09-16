class Window
  attr_accessor :imp
  def initialize; end
  def open; end
  def close; end
  def iconify; end
  def deiconify; end
  def set_origin(point); end
  def set_externt(point); end
  def raise; end
  def lower; end
  def draw_line(start_point, end_point); end

  def draw_rect(start_point, end_point)
    _imp = get_window_imp
    _imp.device_rect(start_point.x, start_point.y, end_point.x, end_point.y)
  end

  def draw_polygon(point, n); end
  def draw_text(char, point); end

  protected

  def get_window_imp
    if(ENV['window_type'] == 'x')
      XWindowImp.new
    else
      WindowImp.new
    end
  end

  def get_view
    View.new
  end

  def content
    @_content
  end
end

# Baseクラスであり、Windowシステムへのインターフェースを宣言
class WindowImp
  def imp_top; end
  def imp_bottom; end
  def imp_set_extent(point); end
  def imp_set_origin(point); end

  def device_rect(cord1, cord2, cord3, cord4)
    puts "Base Window Rectangle #{cord1} #{cord2} #{cord3} #{cord4}"

  end
  def device_text(char, cord); end
  def device_bitmap(char, cord); end

  protected
  def initialize; end
end

class View
  def draw_on(content); end
end

class WindowImp
  def device_bitmap(bitmap_name); end
end

class Point
  attr_accessor :x, :y
  def initialize(x, y)
    @x = x
    @y = y
  end
end
