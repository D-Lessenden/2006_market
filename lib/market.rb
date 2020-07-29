class Market
attr_reader :name, :vendors

  def initialize(name)
    @name = name
    @vendors = []
  end

  def add_vendor(vendor)
    @vendors << vendor
  end

  def vendor_names
    vendor_names = []
    @vendors.each do |vendor|
      vendor_names << vendor.name
    end
    vendor_names
  end

  def vendors_that_sell(item)
    vendors_sell = []
    @vendors.select do |vendor|
      vendor.inventory.select do |k, v|
      vendors_sell << vendor.name if k == item
      #confusing spec, should we return the name or the object?
      end
    end
    vendors_sell
  end


  def total_inventory
    total_inventory = Hash.new
      @vendors.each do |vendor|
        vendor.inventory.each do |k, v|
          quantity = 0
          if total_inventory[k]
            quantity = v
          elsif
          quantity += v
          end
         total_inventory[k] = {quantity: quantity, vendors: vendors_that_sell(k)}
         binding.pry
        end
      end
      total_inventory
    end


end#class
