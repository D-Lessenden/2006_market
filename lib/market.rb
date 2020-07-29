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
      vendors_sell << vendor if k == item
      end
    end
    vendors_sell
  end


end#class
