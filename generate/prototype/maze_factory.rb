class MazeFactory
  def initialize; end
  def make_maze
    Maze.new
  end

  def make_wall
    Wall.new
  end

  def make_room
    Room.new
  end

  def make_door(r1, r2)
    Door.new(r1, r2)
  end
end
