class Glyph
  def draw(window, glyph_context); end
  def set_font(font, glyph_context); end
  def get_font(glyph_context); end
  def first(glyph_context); end
  def next(glyph_context); end
  def done?(glyph_context); end
  def current(glyph_context); end
  def insert(glyph, glyph_context); end
  def remove(glyph_context); end
end

class Character < Glyph
  @_charcode = nil
  def draw(window, glyph_context); end
end

class GlyphContext
  def next(step=1); end
  def insert(quantity=1); end

  def get_font; end

  def set_font(font, span=1)
    @font = font
    @span = span
  end
end

class Font
  def initialize(font_type)
    @font_type = font_type
  end
end
