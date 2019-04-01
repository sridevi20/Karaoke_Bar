require('minitest/autorun')
require('minitest/rg')
require_relative('../karaoke_Bar.rb')
require_relative('../guest.rb')
class BarTest < MiniTest::Test

  def setup()
    @bar = Bar.new("karaoke_Bar", 100)
    @guest1 = Guest.new("Lara", 300, "cheap trilles")
    @guest2 = Guest.new("Mary", 500, "shortgun")
    @guest3 = Guest.new("Sri", 400, "adsfsggs")
    @guests = [@guest1 ,@guest2 ,@guest3]

  end

  def test_get_name()
    assert_equal("karaoke_Bar", @bar.name)
  end
  def test_get_entry_fee()
    assert_equal(100, @bar.entry_fee)
  end

  def test_enough_money_guests()
    assert_equal(true , @bar.check_enough_money_guests?(@guest1))
  end
# def test_allow_guest_to_enter_bar()
#   #@guest2 = Guest.new("Mary", 500, "shortgun")
#   assert_equal(true , @bar.allow_guest_to_enter_bar?(@guest2))
#
# end
end
