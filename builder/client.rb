require 'pp'
require './direction'
require './map_site'
require './door'
require './maze'
require './room'
require './wall'
require './maze_builder'
require './standard_maze_builder'
require './maze_game'

builder = StandardMazeBuilder.new
pp MazeGame.new.create_maze(builder)
