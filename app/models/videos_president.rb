class VideosPresident < ActiveRecord::Base  
  has_many :videos_president_tags, foreign_key: :id_video
end