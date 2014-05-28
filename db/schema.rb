# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20140528071350) do

  create_table "president_candidates", force: true do |t|
    t.integer "tahun"
    t.string  "role"
    t.string  "running_with"
    t.integer "id_partai"
    t.string  "nama_partai"
    t.string  "nama"
    t.string  "jenis_kelamin"
    t.string  "agama"
    t.string  "tempat_lahir"
    t.string  "tanggal_lahir"
    t.string  "status_perkawinan"
    t.string  "nama_pasangan"
    t.integer "jumlah_anak"
    t.string  "kelurahan_tinggal"
    t.string  "kecamatan_tinggal"
    t.string  "kab_kota_tinggal"
    t.string  "provinsi_tinggal"
  end

  create_table "riwayat_pekerjaan_presidens", force: true do |t|
    t.string "id_calon"
    t.string "ringkasan"
    t.string "tanggal_mulai"
    t.string "tanggal_selesai"
  end

  create_table "riwayat_pendidikan_presidens", force: true do |t|
    t.string "id_calon"
    t.string "ringkasan"
    t.string "tanggal_mulai"
    t.string "tanggal_selesai"
  end

end
