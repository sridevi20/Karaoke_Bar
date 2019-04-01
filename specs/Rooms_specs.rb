require('minitest/autorun')
require('minitest/rg')
require_relative('../rooms.rb')
require_relative('../guest.rb')


class RoomsTest < MiniTest::Test

  def setup()
    @rooms = Rooms.new( "Luxury_double_size_room","Once up on a time")
    @room2 = Rooms.new("Luxury_size_room", "The culb isn't the best place")
    @room3 = Rooms.new("King_size_room", "Take a seat right over there")
    # @room4 = Rooms.new("Double_size_room", "short gun")
    # @room5 = Rooms.new("Small_size_room", "Hold up ,no you")
    @list_of_rooms = [ @room2, @room3, @room4,@room5]
    @guest1 = Guest.new("Lara", 300, "one last time")
    @guest2 = Guest.new("Mary", 500, "Take a seat")
    @guest3 = Guest.new("Sri", 400, "The culb isn't the best place")
    @guests = [@guest1 ,@guest2 ,@guest3]
  end

  def test_room_name()

    assert_equal("Luxury_double_size_room" , @rooms.room_name)
  end
  def test_playlist_songs()
    assert_equal("Once up on a time" , @rooms.playlist_songs)
  end
  # def test_count_playlist_songs()
  #
  #   assert_equal(1, @rooms.count_playlist_songs())
  # end

  def test_count_list_of_rooms()
    assert_equal(0, @rooms.count_list_of_rooms())

  end

  # def test_count_guests()
  #   assert_equal(0, @Rooms.count_guests())
  # end
  def test_add_guests_rooms()
    @rooms.add_guests(@guest1)
    @rooms.add_guests(@guest2)
    assert_equal(2, @rooms.count_list_of_rooms())

  end

  def test_check_in_guest_room()
  end
end
