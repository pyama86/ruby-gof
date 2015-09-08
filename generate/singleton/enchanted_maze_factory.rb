class EnchantedMazeFactory < MazeFactory
  def make_room(room_no)
    EnchantedRoom.new(room_no, cast_spell)
  end

  def make_door(r1, r2)
    DoorNeedingSpell.new(r1,r2)
  end
  def cast_spell;end
end


class EnchantedRoom < Room
  def initialize(room_no, cast_spell); end
end

class DoorNeedingSpell < Door; end
