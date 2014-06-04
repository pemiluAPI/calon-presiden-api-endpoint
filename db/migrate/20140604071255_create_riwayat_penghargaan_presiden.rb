class CreateRiwayatPenghargaanPresiden < ActiveRecord::Migration
  def change
    create_table :riwayat_penghargaan_presidens do |t|
      t.string :id_calon
      t.string :ringkasan
      t.string :institusi
      t.string :tanggal
    end
  end
end
