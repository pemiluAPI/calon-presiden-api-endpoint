class RenameRunningMateOnPresidentCandidate < ActiveRecord::Migration
  def change
    change_table :president_candidates do |t|
      t.rename :running_with, :id_running_mate
    end
  end
end
