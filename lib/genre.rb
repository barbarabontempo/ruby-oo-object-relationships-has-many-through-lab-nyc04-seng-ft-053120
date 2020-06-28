class Genre
    attr_reader :name
    @@all = []

    def initialize(name)
        @name = name
        @@all << self

    end

    def songs
        Song.all.select { |songs| songs.genre == self}
    end

    def artists
        self.songs.map { |song_instance| song_instance.artist}
    end
    def self.all
        @@all
    end

end