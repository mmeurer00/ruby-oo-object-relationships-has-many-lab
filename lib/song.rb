class Song
    attr_accessor :artist, :name, :song

    @@all = []

    def initialize(name)
        @name = name
        add_song
    end

    def add_song
        @@all << self
    end

    def self.all
        @@all
    end

    def artist_name
        artist.name if artist
    end

end