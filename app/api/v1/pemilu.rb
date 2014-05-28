module Pemilu
  class APIv1 < Grape::API
    version 'v1', using: :accept_version_header
    prefix 'api'
    format :json

    resource :caleg do     
      
      desc "Return all President Candidates"
      get do
        caleg = Array.new
        
        # Prepare conditions based on params
        valid_params = {          
          jenis_kelamin: 'jenis_kelamin',          
          partai: 'id_partai',          
          tahun: 'tahun'
        }
        conditions = Hash.new
        valid_params.each_pair do |key, value|
          conditions[value.to_sym] = params[key.to_sym] unless params[key.to_sym].blank?
        end

        # Set default year
        conditions[:tahun] = params[:tahun] || 2014

        # Set default limit
        limit = (params[:limit].to_i == 0 || params[:limit].empty?) ? 10 : params[:limit]

        search = ["nama LIKE ? and agama LIKE ?", "%#{params[:nama]}%", "%#{params[:agama]}%"]
        
        PresidentCandidate.where(conditions)
          .where(search)          
          .limit(limit)
          .offset(params[:offset])
          .each do |capres|            
            caleg << {
              id: capres.id,
              tahun: capres.tahun,
              nama: capres.nama,
              jenis_kelamin: capres.jenis_kelamin,
              agama: capres.agama,
              tempat_lahir: capres.tempat_lahir,
              tanggal_lahir: capres.tanggal_lahir,
              status_perkawinan: capres.status_perkawinan,
              nama_pasangan: capres.nama_pasangan,
              jumlah_anak: capres.jumlah_anak,
              kelurahan_tinggal: capres.kelurahan_tinggal,
              kecamatan_tinggal: capres.kecamatan_tinggal,
              kab_kota_tinggal: capres.kab_kota_tinggal,
              provinsi_tinggal: capres.provinsi_tinggal,
              partai: {
                id: capres.id_partai,
                nama: capres.nama_partai
              },
              riwayat_pendidikan: capres.riwayat_pendidikan_presidens,
              riwayat_pekerjaan: capres.riwayat_pekerjaan_presidens
            }
          end
          {
          results: {
            count: caleg.count,
            total: PresidentCandidate.where(conditions).where(search).count,
            caleg: caleg
          }
        }
      end
      
      desc "Return a President Candidate"
      params do
        requires :id, type: String, desc: "Candidate ID."
      end
      route_param :id do
        get do
          capres = PresidentCandidate.find_by(id: params[:id])
          {
            results: {
              count: 1,
              total: 1,
              caleg: [{
                id: capres.id,
                tahun: capres.tahun,
                nama: capres.nama,
                jenis_kelamin: capres.jenis_kelamin,
                agama: capres.agama,
                tempat_lahir: capres.tempat_lahir,
                tanggal_lahir: capres.tanggal_lahir,
                status_perkawinan: capres.status_perkawinan,
                nama_pasangan: capres.nama_pasangan,
                jumlah_anak: capres.jumlah_anak,
                kelurahan_tinggal: capres.kelurahan_tinggal,
                kecamatan_tinggal: capres.kecamatan_tinggal,
                kab_kota_tinggal: capres.kab_kota_tinggal,
                provinsi_tinggal: capres.provinsi_tinggal,
                partai: {
                  id: capres.id_partai,
                  nama: capres.nama_partai
                },
                riwayat_pendidikan: capres.riwayat_pendidikan_presidens,
                riwayat_pekerjaan: capres.riwayat_pekerjaan_presidens
              }]
            }
          }
        end
      end
    end
  end
end