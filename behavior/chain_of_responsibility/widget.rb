require './help_handler'

class Widget < HelpHandler
  attr_accessor :parent

  def initialize(parent, topic)
    super(parent, topic)
    @parent = parent
  end
end

class Button < Widget
  def handle_help
    if has_help
      puts "button help"
    else
      super
    end
  end
end

class Dialog < Widget
  def handle_help
    if has_help
      puts "dialog help"
    else
      super
    end
  end
end

class Application < HelpHandler
  def initialize(topic)
    @topic = topic
  end
  def handle_help
    puts "applicatin help"
  end
end
