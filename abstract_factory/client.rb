require 'pp'
require './direction'
require './map_site'
require './door'
require './maze'
require './room'
require './wall'
require './maze_game'
require './maze_factory'
require './bombed_maze_factory'
require './enchanted_maze_factory'

game = MazeGame.new
bomb_factory = BombedMazeFactory.new
enchanted_factory = EnchantedMazeFactory.new

pp game.create_maze(bomb_factory)
pp game.create_maze(enchanted_factory)
