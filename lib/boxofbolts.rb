require_relative 'item'

class BoxOfBolts < Item

  attr_reader :name, :weight

  def initialize()
    #super("box of bolts", 25)
    @name = "box of bolts"
    @weight = 25
  end

  def feed(unit)
    unit.heal(20)
  end

end