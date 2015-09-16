class XWindowImp < WindowImp
  attr_accessor :dpy, :winid, :gc
  def device_rect(cord1, cord2, cord3, cord4)
    x = [cord1, cord3].min
    y = [cord2, cord4].min
    w = (cord1 - cord3).abs
    h = (cord2 - cord4).abs
    XDrawRectangle.new(@dpy, @winid, @gc, x, y, w, h)
  end
end

class XDrawRectangle
  def initialize(dpy, winid, gc, x, y, w, h)
    puts "XWindow Rectangle #{x} #{y} #{w} #{h}"
  end
end
