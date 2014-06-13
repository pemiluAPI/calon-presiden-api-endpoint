class CreateQuotesPresident < ActiveRecord::Migration
  def change
    create_table :quotes_presidents, {id: false} do |t|
      t.string :id
      t.string :id_calon
      t.text :kutipan
      t.text :context_kutipan      
      t.string :tanggal
      t.string :nama_sumber
      t.string :judul_sumber
      t.text :excerpt_sumber
      t.string :url_sumber
      t.string :format
    end
    execute "ALTER TABLE quotes_presidents ADD PRIMARY KEY (id);"
  end
end
