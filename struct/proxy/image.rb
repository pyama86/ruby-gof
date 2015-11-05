require 'ostruct'
class Image
  def load_an_image_file(chr)
    OpenStruct.new(draw: "image file is #{chr}")
  end
end

class ImagePtr < Image
  def initialize(image_file)
    @_image_file = image_file
    @_image = nil
  end

  def load_image
    @_image = load_an_image_file(@_image_file)
  end

  def method_missing(name)
    @_image ||= load_image
    @_image.send(name)
  end
end

