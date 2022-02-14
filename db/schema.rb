# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2022_02_14_232559) do
  create_table "generos", force: :cascade do |t|
    t.string "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "peliculas", force: :cascade do |t|
    t.string "titulo"
    t.integer "fecha"
    t.integer "calificacion"
    t.integer "genero_id", null: false
    t.integer "personaje_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["genero_id"], name: "index_peliculas_on_genero_id"
    t.index ["personaje_id"], name: "index_peliculas_on_personaje_id"
  end

  create_table "personajes", force: :cascade do |t|
    t.string "nombre"
    t.integer "edad"
    t.integer "peso"
    t.string "historia"
    t.integer "pelicula_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["pelicula_id"], name: "index_personajes_on_pelicula_id"
  end

  add_foreign_key "peliculas", "generos"
  add_foreign_key "peliculas", "personajes"
  add_foreign_key "personajes", "peliculas"
end
