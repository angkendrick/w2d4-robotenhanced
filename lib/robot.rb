class Robot

  attr_accessor :equipped_weapon

  def initialize
    @position = [0,0]
    @items = []
    @health = 100
    @equipped_weapon = nil
  end

  def position
    @position
  end

  def move_left
    @position[0] -= 1
  end

  def move_right
    @position[0] += 1
  end

  def move_up
    @position[1] += 1
  end

  def move_down
    @position[1] -= 1
  end



  def items
    @items
  end

  def pick_up(item)

    can_pick_up = total_weight += item.weight <= 250

    if can_pick_up
      @items << item
      
      if item.is_a? (Weapon)
        @equipped_weapon = item
      end
    end

    can_pick_up

  end

  def items_weight
    if @items == []
      0
    end
    total = 0
    @items.each do |x|
      total += x.weight
    end
    total 
  end

  def health
    @health
  end

  def wound(dmg)
    if (@health - dmg) < 0
      @health = 0
    else
      @health -= dmg
    end
  end

  def heal!(hp)
    if @health == 0
      raise "Already dead!"
    else
      heal(hp)
    end
  end

  def heal(hp)
    if (@health + hp) >= 100
      @health = 100
    else
      @health += hp
    end  
  end

  def attack(unit)
    if @equipped_weapon != nil
      @equipped_weapon.hit(unit)
    else
      unit.wound(5)
    end
  end

  def attack!(unit)
    if unit.is_a? (Robot)
      attack(unit)
    end
  end

  def pick_up(item)
    if item.is_a? (Weapon)
      @equipped_weapon = item
    end
  end

end
