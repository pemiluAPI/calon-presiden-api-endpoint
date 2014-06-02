class PromisesPresident < ActiveRecord::Migration
  def change
    create_table :promises_presidents, {id: false} do |t|
      t.string :id
      t.string :id_calon
      t.string :context_janji
      t.string :janji
      t.string :tanggal
      t.string :judul_sumber
      t.string :url_sumber
    end
    execute "ALTER TABLE promises_presidents ADD PRIMARY KEY (id);"
  end
end
