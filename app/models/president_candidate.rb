class PresidentCandidate < ActiveRecord::Base  
  has_many :riwayat_pekerjaan_presidens, -> { select("id, ringkasan, tanggal_mulai, tanggal_selesai") }, foreign_key: "id_calon"
  has_many :riwayat_pendidikan_presidens, -> { select("id, ringkasan, tanggal_mulai, tanggal_selesai") }, foreign_key: "id_calon"
  has_many :riwayat_organisasi_presidens, -> { select("id, ringkasan, jabatan, tanggal_mulai, tanggal_selesai") }, foreign_key: "id_calon"
  has_many :riwayat_penghargaan_presidens, -> { select("id, ringkasan, institusi, tanggal") }, foreign_key: "id_calon"
end
