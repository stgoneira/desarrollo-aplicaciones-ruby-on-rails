class Postulacion < ApplicationRecord
  belongs_to :empresa
  belongs_to :licitacion
end
