class BombedMazeGame < MazeGame
  def make_wall
    BombedWall.new
  end
  def make_room(n)
    RoomWithABomb.new(n)
  end
end

class BombedWall < Wall; end
class RoomWithABomb < Room; end
