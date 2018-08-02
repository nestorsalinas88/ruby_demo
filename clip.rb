module AcceptComment
  def comments
    @comments ||= []
  end
  def add_comment(comment)
    comments << comment
  end
end

module FirstModule
  def show
    puts "this is displaying now!"
  end
end

class Clip
  def play
    puts "playing #{object_id}.."
  end
end


class Video < Clip
  include AcceptComment
  attr_accessor :resolution
end

class Song < Clip
  include AcceptComment
  attr_accessor :beats_per_min
end

class Photo
 include AcceptComment
 include FirstModule
 def initialize
   @format = 'JPEG'
 end
end



video = Video.new
video.add_comment("cool a slow motion effect")
video.add_comment("weird ending")


song = Song.new
song.add_comment("awesome lyrics dude! ")

photo = Photo.new
photo.add_comment("beutiful lighting!")


p video.comments, song.comments, photo.comments


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