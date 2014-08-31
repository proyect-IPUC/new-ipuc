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

ActiveRecord::Schema.define(version: 20140827193838) do

  create_table "alabanzas", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "aseos", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "audiovisuales", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cancions", force: true do |t|
    t.string   "cancion"
    t.string   "genero"
    t.string   "artista"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "damas_dcs", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "diezanus", force: true do |t|
    t.string   "valor"
    t.date     "dia"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "diezdia", force: true do |t|
    t.string   "valor"
    t.date     "dia"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "diezmotrims", force: true do |t|
    t.string   "valor"
    t.date     "trimestral"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "diezmotris", force: true do |t|
    t.string   "valor"
    t.date     "trimestral"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "diezsems", force: true do |t|
    t.string   "valor"
    t.date     "dia"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "dieztris", force: true do |t|
    t.string   "valor"
    t.date     "dia"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "directivas", force: true do |t|
    t.string   "nombre"
    t.text     "descripcion"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "directs", force: true do |t|
    t.string   "index"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "esc_doms", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "evangelismos", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "eventos", force: true do |t|
    t.string   "evento"
    t.text     "descripcion"
    t.date     "fecha"
    t.time     "hora_inicio"
    t.time     "hora_final"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "intercepcions", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "jovenes", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "junta", force: true do |t|
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
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "misiones", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "modulos", force: true do |t|
    t.string   "miembros"
    t.string   "eventos"
    t.string   "plan_trabajo"
    t.integer  "directiva_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ofrendadia", force: true do |t|
    t.integer  "valor"
    t.date     "dia"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ofrendanuals", force: true do |t|
    t.string   "valor"
    t.date     "dia"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ofrendasems", force: true do |t|
    t.string   "valor"
    t.date     "dia"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ofrendatris", force: true do |t|
    t.string   "valor"
    t.date     "dia"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ofrentrimes", force: true do |t|
    t.string   "valor"
    t.date     "dia"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ofrentris", force: true do |t|
    t.string   "valor"
    t.date     "dia"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "otrosings", force: true do |t|
    t.string   "actividad"
    t.string   "valor"
    t.date     "dia"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "p_trabajos", force: true do |t|
    t.string   "NombrePlanTrabajo"
    t.string   "fechaPlanTrabajo"
    t.text     "DescripcionPlan"
    t.boolean  "Aprobada?"
    t.text     "Observacion"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pagaeventos", force: true do |t|
    t.string   "evento"
    t.string   "valor"
    t.date     "dia"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

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

  create_table "protemplos", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "publicidads", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "recepcions", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "renuevos", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "servicios", force: true do |t|
    t.string   "tipo"
    t.string   "valor"
    t.date     "dia_de_pago"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "valoreves", force: true do |t|
    t.string   "evento"
    t.string   "valor"
    t.date     "dia"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "vigilancia", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
