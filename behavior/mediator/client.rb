require 'pp'
require './dialog_director'

dialog = FontDialogDirector.new
dialog.create_widget
puts dialog.dummy_push_ok
