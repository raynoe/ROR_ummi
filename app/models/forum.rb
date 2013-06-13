class Forum < ActiveRecord::Base
  attr_accessible :category, :description, :title

  validates :category, :title, :presence => true

  has_many :votes
end
