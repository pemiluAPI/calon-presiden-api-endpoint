class EventsPresident < ActiveRecord::Base  
  has_many :events_president_tags, foreign_key: :id_schedule
end