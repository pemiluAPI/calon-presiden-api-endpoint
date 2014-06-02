class VideosPresidentTag < ActiveRecord::Migration
  def change
    create_table :videos_president_tags do |t|
      t.string :id_video
      t.string :tag
    end
  end
end
