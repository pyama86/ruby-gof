class MazeFactory
  def self.instance
    @@_instance ||= case
                   when ENV['bomb']
                     BombedMazeFactory.send(:new)
                   when ENV['enchant']
                     EnchantedMazeFactory.send(:new)
                   else
                     new
                   end
    @@_instance
  end

  def make_maze
    Maze.new
  end

  def make_wall
    Wall.new
  end

  def make_room(room_no)
    Room.new(room_no)
  end

  def make_door(r1, r2)
    Door.new(r1, r2)
  end

  private_class_method :new
end
