class EventsPresidentTag < ActiveRecord::Base  
  belongs_to :events_president, foreign_key: :id_schedule
end