class Concurso < ApplicationRecord
  belongs_to :usuario
<<<<<<< HEAD
  has_many :videos, dependent: :destroy 
  mount_uploader :imagen, PictureUploader
  validates :usuario_id, presence: true
  validates :descripcion, presence: true, length: { maximum: 1000 }
=======
  mount_uploader :imagen, PictureUploader
  validates :usuario_id, presence: true
  validates :descripcion, presence: true, length: { maximum: 140 }
>>>>>>> 76412821a99259e32821c3d2033bfb90a87bc0d6
end
