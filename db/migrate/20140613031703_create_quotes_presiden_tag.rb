class CreateQuotesPresidenTag < ActiveRecord::Migration
  def change
    create_table :quotes_presiden_tags do |t|
      t.string :id_kutipan
      t.string :tag
    end
  end
end
