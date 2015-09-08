require './object'
require './text_shape'

bottom_left = Point.new(10, 10)
top_right = Point.new(20, 20)
p bottom_left
p top_right

text_shape = TextShape.new
text_shape.bounding_box(bottom_left, top_right)

p bottom_left
p top_right


