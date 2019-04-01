class Rooms
  attr_reader :room_name, :playlist, :list_of_rooms
  def initialize(room_name)
    @list_of_rooms = []
    @room_name = room_name
    @playlist = []
  end

  def count_playlist()
    return @playlist.length()

  end

  def count_list_of_rooms()
    return @list_of_rooms.length()
  end

  def add_guests_rooms(guest)
   @list_of_rooms.push(guest)
  end

  def test_check_in_guest_room()
    for guest in guest.guests()
      add_guests()




end
