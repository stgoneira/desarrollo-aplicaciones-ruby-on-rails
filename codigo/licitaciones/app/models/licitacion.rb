class Licitacion < ApplicationRecord
  belongs_to :categoria
  belongs_to :licitante
end
