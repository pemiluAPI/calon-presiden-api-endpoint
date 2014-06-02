class PromisesPresident < ActiveRecord::Base  
  has_many :promises_president_tags, foreign_key: :id_janji
end