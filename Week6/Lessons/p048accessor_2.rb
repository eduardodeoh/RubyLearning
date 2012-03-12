class Song
  def initialize(name, artist)
    @name = name
    @artist = artist
  end
  #attr_reader :name, :artist
  attr_writer :name, :artist
  #attr_accessor :name, :artist
end

song = Song.new("Brasil", "Ivete")
#puts song.name
puts song.artist = "Tim"
