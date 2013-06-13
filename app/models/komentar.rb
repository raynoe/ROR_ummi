class Komentar < ActiveRecord::Base
  attr_accessible :date_post, :description_komentar, :forum_id, :user_id
    belongs_to :forum
end
