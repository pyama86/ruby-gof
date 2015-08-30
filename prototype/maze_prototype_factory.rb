class MazePrototypeFactory < MazeFactory
  attr_accessor :_prototype_maze, :_prototype_room, :_prototype_wall, :_prototype_door
  def initialize(maze, wall, room, door)
    @_prototype_maze = maze
    @_prototype_room = room
    @_prototype_wall = wall
    @_prototype_door = door
  end
  def make_maze
    @_prototype_maze.clone
  end

  def make_wall
    @_prototype_wall.clone
  end

  def make_room(room_no)
    room = @_prototype_room.clone
    room.send(:initialize, room_no)
    room
  end

  def make_door(r1, r2)
    door = @_prototype_door.clone
    door.send(:initialize, r1, r2)
    door
  end
end
