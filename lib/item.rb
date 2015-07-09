class Item

  attr_accessor :name, :weight

  def initialize(item, qty)
    @name = item
    @weight = qty
  end

end