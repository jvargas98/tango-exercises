class Song
  def initialize name
    @name = name
  end
  
  def play
    puts "playing... #{@name}"
  end
end

song1 = Song.new('Song 1')
song2 = Song.new('Song 2')

song1.play
song2.play
  
