class Guest
  attr_reader :name, :money, :favourite_songs

  def initialize(name, money, favourite_songs)
    @name = name
    @guests = []
    @money = money
    @favourite_songs = favourite_songs
  end

  def add_guests()
    @guests >> guests
  end

  def count_guests()
    @guests.length
  end

end
