# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

<<<<<<< HEAD
ActiveRecord::Schema.define(version: 20170904222238) do
=======
ActiveRecord::Schema.define(version: 20170903034848) do
>>>>>>> 76412821a99259e32821c3d2033bfb90a87bc0d6

  create_table "concursos", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "nombre"
    t.string "imagen"
    t.string "url"
    t.date "fechaInicio"
    t.date "fechaFin"
    t.text "descripcion"
    t.bigint "usuario_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["usuario_id", "created_at"], name: "index_concursos_on_usuario_id_and_created_at"
    t.index ["usuario_id"], name: "index_concursos_on_usuario_id"
  end

  create_table "usuarios", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "nombre"
    t.string "apellido"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "password_digest"
    t.index ["email"], name: "index_usuarios_on_email", unique: true
  end

<<<<<<< HEAD
  create_table "videos", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "nombre"
    t.string "apellido"
    t.string "email"
    t.string "url_video"
    t.text "mensaje"
    t.bigint "concurso_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "picturepath"
    t.index ["concurso_id"], name: "index_videos_on_concurso_id"
  end

  add_foreign_key "concursos", "usuarios"
  add_foreign_key "videos", "concursos"
=======
  add_foreign_key "concursos", "usuarios"
>>>>>>> 76412821a99259e32821c3d2033bfb90a87bc0d6
end
