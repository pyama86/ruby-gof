class DialogDirector
  def show_dialog; end
  def widget_changed(widget); end
  def create_widget; end
end

class Widget
  def initialize(director)
    @_director = director
  end

  def changed
    @_director.widget_changed(self)
  end
end

class EntryField < Widget
  def set_text(text)
    @_text = text
  end

  def show
    puts "current font is #{@_text}"
  end
end

class ListBox < Widget
  def select_font(font)
    @_font = font
    changed
  end

  def get_font
    @_font
  end
end

class Button < Widget;end

class FontDialogDirector < DialogDirector
  def create_widget
    @_ok = Button.new(self)
    @_cancel = Button.new(self)
    @_font_list = ListBox.new(self)
    @_font_name = EntryField.new(self)
  end

  def widget_changed(widget)
    case widget
    when @_font_list
      @_font_name.set_text @_font_list.get_font
      @_font_name.show
    when @_ok
      "push ok"
    end
  end

  def dummy_push_ok
    @_ok.changed
  end

  def dummy_choice_list_box
    @_font_list.select_font "monaco"
  end
end
