class Personaje < ApplicationRecord
  has_and_belongs_to_many :peliculas
  has_one_attached :imagen
end
