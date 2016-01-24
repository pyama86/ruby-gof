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

class EntryField < Widget;end
class ListBox < Widget;end
class Button < Widget;end

class FontDialogDirector < DialogDirector
  def create_widget
    @_ok = Button.new(self)
    @_cancel = Button.new(self)
    @_font_list = ListBox.new(self)
    @_font_name = ListBox.new(self)
  end

  def widget_changed(widget)
    case widget
    when @_font_list
      "font list"
    when @_ok
      "push ok"
    end
  end

  def dummy_push_ok
    @_ok.changed
  end
end
