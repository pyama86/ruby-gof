require 'pp'
require './dialog_director'

dialog = FontDialogDirector.new
dialog.create_widget
puts dialog.dummy_push_ok
dialog.dummy_choice_list_box
