class Maze
  def initialize; end
  def add_room(room)
    @rooms ||= []
    @rooms << room
  end
  def room_no(no)
    @rooms.find {|room| room.room_no == no } if @rooms
  end
end
