class CreatePresidentCandidate < ActiveRecord::Migration
  def change
    create_table :president_candidates, {id: false} do |t|
      t.string :id
      t.integer :tahun
      t.string :role
      t.string :running_with
      t.integer :id_partai
      t.string :nama_partai
      t.string :nama
      t.string :jenis_kelamin
      t.string :agama
      t.string :tempat_lahir
      t.string :tanggal_lahir
      t.string :status_perkawinan
      t.string :nama_pasangan
      t.integer :jumlah_anak
      t.string :kelurahan_tinggal
      t.string :kecamatan_tinggal
      t.string :kab_kota_tinggal
      t.string :provinsi_tinggal
    end
    execute "ALTER TABLE president_candidates ADD PRIMARY KEY (id);"
  end
end
