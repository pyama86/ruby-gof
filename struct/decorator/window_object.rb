class Window
  def set_contents(visual_component)
    @contents ||= []
    @contents << visual_component
  end

  def draw
    @contents.each do |c|
      c.draw
    end
  end
end

class TextView < VisualComponent
  def draw
    puts "drow text view"
  end

end
