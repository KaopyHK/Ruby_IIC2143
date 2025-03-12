# Un objeto es un contenedor de datos, que a su vez controla el acceso a dichos datos
# Todo en Ruby es un objeto, incluso <nil>

class Song # Se define la clase

    attr_reader :name, :artist # permite lectura
    attr_writer :name # permite escritura
    attr_accessor :duration # permite ambos

    def initialize (name, artist, duration)
        @name = name # Variable de instancia, empieza con @
        @artist = artist
        @duration = duration
    end

    def to_s #sobreescribimos to_s
        "Song: #{@name}--#{@artist}--#{@duration}"
    end
end

my_song = Song.new("Infierno", "Yung beef", "3.45")

#puts my_song.artist
#my_song.artist = "Lana del Rey"
#puts my_song.artist

# El bloque superior arroja error

class KaraokeSong < Song # usa < para herencia
    