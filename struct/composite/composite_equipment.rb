class CompositeEquipment < Equipment
  attr_accessor :equipment
  def add(equipment)
    @equipment ||= []
    @equipment << equipment
  end

  def create_iterator
    @equipment
  end

  def net_price
    total = 0
    create_iterator.each do |item|
      total += item.net_price
    end
    total
  end
end

class Chassis < CompositeEquipment
end

class Cabinet < CompositeEquipment
end

class Bus < CompositeEquipment
  def net_price
    3000
  end
end

class FloppyDisk < CompositeEquipment
  def power; end
  def net_price
    2000
  end
  def discount_price; end
end
