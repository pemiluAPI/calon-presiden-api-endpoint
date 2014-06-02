class PromisesPresidentTag < ActiveRecord::Migration
  def change
    create_table :promises_president_tags do |t|
      t.string :id_janji
      t.string :tag
    end
  end
end
