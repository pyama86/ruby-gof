require 'pp'
require './direction'
require './map_site'
require './door'
require './maze'
require './room'
require './wall'
require './maze_game'
require './maze_factory'
require './maze_prototype_factory'

game = MazeGame.new
simple_maze_factory = MazePrototypeFactory.new(
  Maze.new,
  Wall.new,
  Room.new(nil),
  Door.new(nil, nil)
)
pp game.create_maze(simple_maze_factory)
