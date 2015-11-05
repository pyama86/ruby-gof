require 'pp'
require './glyph'

gc = GlyphContext.new
monaco = Font.new("monaco")

gc.set_font(monaco, 6)
