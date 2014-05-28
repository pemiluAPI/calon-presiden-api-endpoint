class CreateRiwayatPendidikanPresiden < ActiveRecord::Migration
  def change
    create_table :riwayat_pendidikan_presidens do |t|
      t.string :id_calon
      t.string :ringkasan
      t.string :tanggal_mulai
      t.string :tanggal_selesai
    end
  end
end
