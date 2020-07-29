class Vendor
attr_reader :name, :inventory

  def initialize(name)
    @name = name
    @inventory = {}
  end

  def check_stock(item)
    #0
    @inventory.select do |k, v|
      if item != k
        return 0
      elsif k == item
        return  @inventory[k]
      end
    end
  end

  def stock(item, quantity)
    if @inventory[item] == item
      @inventory[item] += quantity
    else @inventory[item] = quantity
    end
  end



end
