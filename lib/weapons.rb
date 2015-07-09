require_relative 'item'

class Weapon < Item

  attr_accessor :name, :weight, :damage

  def initialize(name, weight, damage)
    @name = name
    @weight = weight
    @damage = damage
  end

  def hit(unit)
    unit.wound(45) 
  end


end