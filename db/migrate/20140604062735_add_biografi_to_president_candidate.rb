class AddBiografiToPresidentCandidate < ActiveRecord::Migration
  def change
    change_table :president_candidates do |t|
      t.text :biografi
    end
  end
end
