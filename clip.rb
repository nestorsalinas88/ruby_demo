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

module FirstModule
  def show
    puts "this is displaying now!"
  end
end


class Video < Clip
  attr_accessor :resolution
end

class Song < Clip
  attr_accessor :beats_per_min
end

class Photo < Clip
 include FirstModule
  puts "this is a photo"
end

clip = Photo.new
clip.show
clip.add_comment("this is awesome! ")


video = Video.new
video.add_comment("cool a slow motion effect")
video.add_comment("weird ending")

song = Song.new
song.add_comment("awesome lyrics dude! ")


p video.comments, song.comments, clip.comments


# different exercise practicing modules

module Curious
  def investigate(thing)
    puts "look at this #{thing}"
  end
end

module Clumsy
  def break(thing)
    puts "knocks over #{thing}"
  end
end

class Monkey
  include Curious
  include Clumsy
end


bub = Monkey.new
bub.investigate('vase')
bub.break('vase')