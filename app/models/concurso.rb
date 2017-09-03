class Concurso < ApplicationRecord
  belongs_to :usuario
  mount_uploader :imagen, PictureUploader
  validates :usuario_id, presence: true
  validates :descripcion, presence: true, length: { maximum: 140 }
end
