require_relative("song.rb")

class Artist
    attr_accessor :name, :songs
    def initialize(name)
        @name = name
    end

    def songs
        Song.all
    end

    def add_song(song)
        song.artist = self
    end

    def add_song_by_name(name)
        new_song=Song.new(name)
        new_song.artist = self
    end

    def self.song_count
        new_array = []
        for i in Song.all
            new_array.push i.artist
        end
        new_array.length
    end
end