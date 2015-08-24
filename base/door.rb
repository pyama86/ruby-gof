class Door < MapSite
  attr_accessor :room_1, :room_2, :is_open
  def initialize(room_1, room_2); end
  def enter(); end
  def other_side_from(room); end
end
