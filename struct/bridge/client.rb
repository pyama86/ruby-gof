require 'pp'
require './window'
require './any_window'
require './any_window_imp'

start_point = Point.new(1, 10)
end_point = Point.new(2, 20)

# memo
# clientから操作されるWindowのインターフェースは変化しないが、
# 内部でWindowImpをXwindowやその他のWindowシステムごとに
# 設けることによりclientの動作はいかなるシステムにおいても変更することがない。

window = Window.new
window.draw_rect(start_point, end_point)

ENV['window_type'] = 'x'
x_window = Window.new
x_window.draw_rect(start_point, end_point)
