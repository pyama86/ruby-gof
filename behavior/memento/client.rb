require 'pp'
require './graphic.rb'
require './constraint_solver.rb'

move = MoveCommand.new
move.execute
move.unexecute
