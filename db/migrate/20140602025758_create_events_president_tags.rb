class CreateEventsPresidentTags < ActiveRecord::Migration
  def change
    create_table :events_president_tags do |t|
      t.string :id_schedule
      t.string :tag
    end
  end
end
