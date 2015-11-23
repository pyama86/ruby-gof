require './help_handler.rb'
require './widget.rb'
APP_TOPIC = 0
DIALOG_TOPIC = 1
BUTTON_TOPIC = 2

app = Application.new(APP_TOPIC)
dialog = Dialog.new(app, DIALOG_TOPIC)
button = Button.new(dialog, BUTTON_TOPIC)
button.handle_help

app = Application.new(APP_TOPIC)
dialog = Dialog.new(app, DIALOG_TOPIC)
button = Button.new(dialog, -1)
button.handle_help
