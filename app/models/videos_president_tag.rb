class VideosPresidentTag < ActiveRecord::Base  
  belongs_to :videos_president, foreign_key: :id_video
end