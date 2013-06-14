class Forum < ActiveRecord::Base
  attr_accessible :category, :description, :title

  validates :category, :title, :presence => true
<<<<<<< HEAD
has_many :komentar
=======

  has_many :votes
>>>>>>> 8fa1f0e5d8135a587d482a38dbf0deb6dc6e5efe
end
