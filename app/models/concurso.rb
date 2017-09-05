class Concurso < ApplicationRecord
  belongs_to :usuario
  has_many :videos, dependent: :destroy 
  mount_uploader :imagen, PictureUploader
  validates :usuario_id, presence: true
  validates :descripcion, presence: true, length: { maximum: 1000 }
end
