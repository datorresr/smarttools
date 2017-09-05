class Video < ApplicationRecord
  belongs_to :concurso
  mount_uploader :videopath, VideoPathUploader
  default_scope -> { order(created_at: :desc) }
  validates  :concurso_id, presence: true
end
