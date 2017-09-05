class CreateVideos < ActiveRecord::Migration[5.1]
  def change
    create_table :videos do |t|
      t.string :nombre
      t.string :apellido
      t.string :email
      t.string :url_video
      t.text :mensaje
      t.references :concurso, foreign_key: true

      t.timestamps
    end
    add_index :videos, [:concurso_id, :created_at]
  end
end
