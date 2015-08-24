class MazeGame
  def create_maze
    maze = Maze.new
    r1 = Room.new(1)
    r2 = Room.new(2)
    the_door = Door.new(r1, r2)

    r1.set_side(North, Wall.new)
    r1.set_side(East, Wall.new)
    r1.set_side(South, Wall.new)
    r1.set_side(West, Wall.new)
    
    r2.set_side(North, Wall.new)
    r2.set_side(East, Wall.new)
    r2.set_side(South, Wall.new)
    r2.set_side(West, the_door)

    maze.add_room(r1)
    maze.add_room(r2)
    maze
  end
end
