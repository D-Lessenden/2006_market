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
    if @inventory[item]
      @inventory[item] += quantity
    else @inventory[item] = quantity
    end
  end


  def potential_revenue
    revenue = 0
    @inventory.each do |k, v|
      revenue += k.price * v
    end
    revenue
  end


end
