# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20140908180636) do

  create_table "cancions", force: true do |t|
    t.string   "cancion"
    t.string   "genero"
    t.string   "artista"
    t.text     "letra"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "diezmoanuals", force: true do |t|
    t.integer  "valor"
    t.date     "año"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "diezmodia", force: true do |t|
    t.integer  "valor"
    t.date     "dia"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "diezmosems", force: true do |t|
    t.integer  "valor"
    t.date     "semana"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "diezmotris", force: true do |t|
    t.integer  "valor"
    t.date     "trimestre"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "directivas", force: true do |t|
    t.string   "nombre"
    t.text     "descripcion"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "eventos", force: true do |t|
    t.string   "evento"
    t.integer  "valor"
    t.date     "dia"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "events", force: true do |t|
    t.string   "title"
    t.text     "description"
    t.datetime "start"
    t.datetime "end"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "membrecia", force: true do |t|
    t.string   "nombre"
    t.string   "apellidos"
    t.string   "telefono"
    t.string   "direccion"
    t.string   "email"
    t.boolean  "recibioEspiritu"
    t.date     "fecha"
    t.text     "comentarios"
    t.boolean  "activo"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "cover_file_name"
    t.string   "cover_content_type"
    t.integer  "cover_file_size"
    t.datetime "cover_updated_at"
  end

  create_table "modulos", force: true do |t|
    t.integer  "membrecium_id"
    t.string   "cargo"
    t.integer  "directivas_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "modulos", ["directivas_id"], name: "index_modulos_on_directivas_id"

  create_table "ofrendadia", force: true do |t|
    t.integer  "valor"
    t.date     "dia"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ofrendanuals", force: true do |t|
    t.integer  "valor"
    t.date     "año"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ofrendasems", force: true do |t|
    t.integer  "valor"
    t.date     "dia"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ofrendatris", force: true do |t|
    t.integer  "valor"
    t.date     "trimestre"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "otrosings", force: true do |t|
    t.string   "actividad"
    t.integer  "valor"
    t.date     "dia"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "p_trabajos", force: true do |t|
    t.string   "nombrep_trabajo"
    t.date     "fechap_trabajo"
    t.text     "descriptionp_trabajo"
    t.boolean  "aprobado"
    t.text     "observacion"
    t.integer  "directiva_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "p_trabajos", ["directiva_id"], name: "index_p_trabajos_on_directiva_id"

  create_table "paginadis", force: true do |t|
    t.string   "diezmo"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "paginaegs", force: true do |t|
    t.string   "egresos"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "paginains", force: true do |t|
    t.string   "ingresos"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "paginas", force: true do |t|
    t.string   "ofrenda"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "servicios", force: true do |t|
    t.string   "empresa"
    t.integer  "valor"
    t.date     "dia_de_pago"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "nombre"
    t.string   "apellido"
    t.date     "fcha_ncto"
    t.string   "email",            null: false
    t.string   "crypted_password", null: false
    t.string   "salt",             null: false
    t.boolean  "admin"
    t.boolean  "usuario"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true

end
