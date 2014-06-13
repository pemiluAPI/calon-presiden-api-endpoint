class QuotesPresidenTag < ActiveRecord::Base  
  belongs_to :quotes_president, foreign_key: :id_kutipan
end