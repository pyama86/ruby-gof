require 'pp'
require './direction'
require './map_site'
require './door'
require './maze'
require './room'
require './wall'
require './maze_game'
require './bombed_maze_game'


pp MazeGame.new.create_maze
pp BombedMazeGame.new.create_maze
