class PromisesPresidentTag < ActiveRecord::Base  
  belongs_to :promises_president, foreign_key: :id_janji
end