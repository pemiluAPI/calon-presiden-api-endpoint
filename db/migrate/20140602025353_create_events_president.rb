class CreateEventsPresident < ActiveRecord::Migration
  def change
    create_table :events_presidents, {id: false} do |t|
      t.string :id
      t.string :id_calon
      t.string :judul
      t.string :deskripsi
      t.string :tanggal_mulai
      t.string :waktu_mulai
      t.string :tanggal_selesai
      t.string :waktu_selesai      
    end
    execute "ALTER TABLE events_presidents ADD PRIMARY KEY (id);"
  end
end
