class MazeGame
  def create_maze
    maze = make_maze
    r1 = make_room(1)
    r2 = make_room(2)
    the_door = make_door(r1, r2)
    maze.add_room(r1)
    maze.add_room(r2)
    
    r1.set_side(North, make_wall)
    r1.set_side(East, the_door)
    r1.set_side(South, make_wall)
    r1.set_side(West, make_wall)
    
    r2.set_side(North, make_wall)
    r2.set_side(East, make_wall)
    r2.set_side(South, make_wall)
    r2.set_side(West, the_door)
    maze

  end

  def make_maze
    Maze.new
  end

  def make_room(n)
    Room.new(n)
  end

  def make_wall
    Wall.new
  end

  def make_door(r1, r2)
    Door.new(r1, r2)
  end
end
