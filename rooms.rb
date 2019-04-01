class Rooms
  attr_reader :room_name, :playlist_songs
  def initialize(room_name, playlist_songs)

    @room_name = room_name
    @playlist_songs = playlist_songs
    @list_of_rooms = []
  end

  # def count_playlist_songs()
  #   return @playlist_songs.length()
  #
  # end

  # def count_list_of_rooms()
  #   return @list_of_rooms.length()
  # end

  def add_guests_rooms(guest)
    @rooms.push(guest)
  end

  # def test_check_in_guest_room()
  #   @rooms.
  # end



end
