require 'pp'
require './equipment'
require './composite_equipment'

cabinet = Cabinet.new "PC Cabinet"
chassis = Chassis.new "PC Cabinet"

cabinet.add chassis

bus = Bus.new "MAC Bus"
chassis.add bus
chassis.add FloppyDisk.new "3.5in Floppy"

pp "net price is #{chassis.net_price}"
