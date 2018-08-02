class Clip
  attr_reader :comments
  def initialize
    @comments = []
  end
  def add_comment(comment)
    comments << comment
  end
  def play
    puts "playing #{object_id}.."
  end
end

class Video < Clip
  attr_accessor :resolution
end

class Song < Clip
  attr_accessor :beats_per_min
end


video = Video.new
video.add_comment("cool a slow motion effect")
video.add_comment("weird ending")

song = Song.new
song.add_comment("awesome lyrics dude! ")


p video.comments, song.comments