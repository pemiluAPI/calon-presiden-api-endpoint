class QuotesPresident < ActiveRecord::Base  
  has_many :quotes_presiden_tags, foreign_key: :id_kutipan
end