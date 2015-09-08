class StandardMazeBuilder < MazeBuilder
  def initialize
    @_current_maze = nil
  end

  def build_maze
    @_current_maze = Maze.new 
  end

  def build_room(room_number)
    unless @_current_maze && @_current_maze.room_no(room_number) 
      room = Room.new(room_number)
      room.set_side(North, Wall.new)
      room.set_side(East, Wall.new)
      room.set_side(South, Wall.new)
      room.set_side(West, Wall.new)
      @_current_maze.add_room(room)
    end
  end

  def build_door(room_from, room_to)
    r1 = @_current_maze.room_no(room_from)
    r2 = @_current_maze.room_no(room_to)
    door = Door.new(r1, r2)
    r1.set_side(common_wall(r1, r2), door)
    r2.set_side(common_wall(r2, r1), door)
  end

  def get_maze
    @_current_maze 
  end

  private
  def common_wall(room1, room2)
    if(room1.room_no == 1)
      North
    else
      South
    end
  end
end
