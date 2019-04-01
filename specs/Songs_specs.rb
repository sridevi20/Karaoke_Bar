require('minitest/autorun')
require('minitest/rg')
require_relative('../songs.rb')
class SongTest < MiniTest::Test

  def setup()
    @song = Song.new("Take a seat")
  end

  def test_song()
    assert_equal("Take a seat", @song.name)
  end
end
