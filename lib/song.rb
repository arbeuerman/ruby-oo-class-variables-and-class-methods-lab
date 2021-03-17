

class Song 

    #class variables
    @@count = 0
    @@genres = []
    @@artists = []

    attr_accessor :name, :artist, :genre
  
    def initialize(name, artist, genre)
        @@count += 1
        @@genres << genre
        @@artists << artist
     
        #instance variables
        @name = name
        @artist = artist
        @genre = genre
    end 

    def self.count
        @@count
    end

    def self.genres
        @@genres.uniq 
    end

    def self.artists
        @@artists.uniq 
    end

    def self.genre_count
        count_of_genres = {}
        @@genres.each do |genre|
            if count_of_genres.key?(genre)
                count_of_genres[genre] += 1
            else
                count_of_genres[genre] = 1
            end
        end 
        count_of_genres
    end
    
    def self.artist_count
        count_of_artists = {}
        @@artists.each do |artist|
            artist_total = @@artists.count(artist)
            count_of_artists[artist] = artist_total
        end 
        count_of_artists
    end
end 

#another way to do self.artist_count
            # if count_of_artists.key?(artist)
            #     count_of_artists[artist] += 1
            # else
            #     count_of_artists[artist] = 1
            # end