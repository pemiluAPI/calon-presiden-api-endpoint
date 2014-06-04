class RiwayatOrganisasiPresiden < ActiveRecord::Base
  belongs_to :presiden_candidate, foreign_key: :id_calon
end
