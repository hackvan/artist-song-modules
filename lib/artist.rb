require 'pry'

class Artist
  extend  Memorable::ClassMethods
  extend  Findable
  include Memorable::InstanceMethods
  include Paramable

  attr_accessor :name
  attr_reader :songs

  @@artists = []

  def initialize
    # When we include a module in a class, we are really telling 
    # that class to inherit methods from that module.
    super
    @songs = []
  end

  def self.all
    @@artists
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def add_songs(songs)
    songs.each { |song| add_song(song) }
  end
end
