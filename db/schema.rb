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

ActiveRecord::Schema.define(version: 20140616175554) do

  create_table "directivas", force: true do |t|
    t.string   "nombre"
    t.string   "apellido"
    t.string   "cargo"
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

end
