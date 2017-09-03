class CreateConcursos < ActiveRecord::Migration[5.1]
  def change
    create_table :concursos do |t|
      t.string :nombre
      t.string :imagen
      t.string :url
      t.date :fechaInicio
      t.date :fechaFin
      t.text :descripcion
      t.references :usuario, foreign_key: true

      t.timestamps
    end
    add_index :concursos, [:usuario_id, :created_at]
  end
end
