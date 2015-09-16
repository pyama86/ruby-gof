class ApplicationWindow < Window
  def draw_contents
    get_view.draw_on(self)
  end
end

class IconWindow < Window
  attr_accessor :bitmap_name
  def draw_contents
    imp = get_window_imp
    imp.device_bitmap("example") if imp
  end
end
