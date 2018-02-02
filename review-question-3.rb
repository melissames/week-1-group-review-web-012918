# begin to build a simple program that models Instagram
# you should have a User class, a Photo class and a comment class

require "pry"

class User

  attr_accessor :name
  attr_reader :photos


  def initialize (name)
    @name = name
    @photos = []
  end

  def post_photo
    photo = Photo.new
    @photos << photo
    photo.user = self
    photo
  end

end


class Photo
  attr_accessor :user, :comments
  attr_reader :tag

  def initialize
    @comments = []

  end

  def make_comment(comment)
    comment1 = Comment.new(comment)
    @comments << comment
  end


end




class Comment
  @@all =[]

  attr_accessor :photos, :comment

  def initialize(comment)
    @comment = comment
    @@all << self
  end

  def self.all
    @@all
  end

end


user = User.new("Sophie")
photo = Photo.new
photo.user = user
photo.user.name
# => "Sophie"
user.photos
# => [<photo 1>]

binding.pry

photo.comments
# => []

photo.make_comment("this is such a beautiful photo of your lunch!! I love photos of other people's lunch")
photo.comments
# => [<comment1>]

Comment.all
#=> [<comment1>]
