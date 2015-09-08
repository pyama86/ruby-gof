class Room < MapSite
  attr_accessor :sides, :room_no
  def initialize(room_no); end
  def get_side(direction); end
  def set_side(direction, map_site); end
  def enter(); end
end
