class Pelicula < ApplicationRecord
  belongs_to :genero
  has_and_belongs_to_many :personajes
  has_one_attached :imagen
end
