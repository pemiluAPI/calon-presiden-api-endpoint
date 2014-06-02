class VideosPresident < ActiveRecord::Migration
  def change
    create_table :videos_presidents, {id: false} do |t|
      t.string :id
      t.string :id_calon
      t.string :judul
      t.string :url_video
      t.string :tanggal_direkam
      t.string :tanggal_upload
    end
    execute "ALTER TABLE videos_presidents ADD PRIMARY KEY (id);"
  end
end
