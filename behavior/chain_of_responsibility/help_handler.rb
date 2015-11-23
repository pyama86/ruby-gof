class HelpHandler
  NO_HELP_TOPIC = -1
  attr_accessor :successor, :topic
  def initialize(handler, topic)
    @successor = handler
    @topic = topic
  end
  def has_help
    @topic != NO_HELP_TOPIC
  end

  def handle_help
    if @successor
      @successor.handle_help
    end
  end
end
