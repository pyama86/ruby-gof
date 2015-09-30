require 'pp'
require './visual_component'
require './decorator'
require './window_object'

window = Window.new
window.set_contents(
  BorderDecorator.new(
    ScrollDecorator.new(TextView.new), 1
  )
)
window.draw

