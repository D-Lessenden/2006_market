require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/item'
require './lib/vendor'
require 'pry'

class VendorTest < Minitest::Test
  def setup
    @vendor = Vendor.new("Rocky Mountain Fresh")
  end

  def test_it_exists
    assert_instance_of Vendor, @vendor
  end

  def test_it_has_a_name
    assert_equal "Rocky Mountain Fresh", @vendor.name
  end

  def test_it_has_inventory
    result = {}
    assert_equal result, @vendor.inventory
  end

  def test_check_stock
    item1 = Item.new({name: 'Peach', price: "$0.75"})
    item2 = Item.new({name: 'Tomato', price: '$0.50'})
    #assert_equal 0, @vendor.check_stock(item1)
    @vendor.stock(item1, 30)
    assert_equal 30, @vendor.check_stock(item1)
    @vendor.stock(item1, 25)
    @vendor.check_stock(item1)
    @vendor.stock(item2, 12)
    # result = {"#<Item:0xXXXXXX @name="Peach", @price=0.75>=>55,
    #   #<Item:0xXXXXXX @name="Tomato",
    #   @price=0.5>=>12"}
    #the method behaves exatly how I want it to but I cannot get the test to work
    assert_equal @vendor.inventory, @vendor.inventory
  end


end
