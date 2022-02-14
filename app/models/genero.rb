class Genero < ApplicationRecord
  has_one_attached :imagen
  has_many :peliculas
end
