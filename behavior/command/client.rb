require './command'
commands = []
commands << OpenCommand.new(Application.new)
commands << PasteCommand.new(Document.new("test"))
commands.each(&:execute)
