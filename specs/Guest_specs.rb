require('minitest/autorun')
require('minitest/rg')
require_relative("../guest.rb")
class GuestTest < MiniTest::Test
  def setup()
    @guest = Guest.new( "Devi" , 1000, "songsong")

    @guest1 = Guest.new("Lara", 300, "cheap trilles")
    @guest2 = Guest.new("Mary", 500, "shortgun")
    @guest3 = Guest.new("Sri", 400, "adsfsggs")
    @guests = [@guest1 ,@guest2 ]

  end
  def test_get_guest_name()
    assert_equal("Devi",@guest.name)
  end

  def test_get_guest_money()
    assert_equal(1000, @guest.money)
  end

  def test_get_favourite_song()
    assert_equal("songsong", @guest.favourite_songs)
  end
  def test_add_guests()
    @guest.add_guests(@guest1)
    @guest.add_guests(@guest2)
    assert_equal(2, @guest.count_guests())
  end
  # def test_count_guests()
  #   assert_equal(0, @guest.count_guests)
  # end


  # def test_add_guests()
  #
  #   @guest.add_guests(@list_of_guest1)
  #   assert_equal(1, @guest.count_guests)
  # end


  # def test_count_guests()
  #   @guests.add_guests(@guest1)
  #   @guests.add_guests(@guest2)
  #   assert_equal(2, @guests.count_guests(guests))
  # end
end
