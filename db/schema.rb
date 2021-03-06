# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20090722144952) do

  create_table "areas", :force => true do |t|
    t.integer  "parent_id"
    t.string   "nombre"
    t.integer  "tipo_id"
    t.integer  "nivel_id"
    t.integer  "lft"
    t.integer  "rgt"
    t.boolean  "activo"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "formularios", :force => true do |t|
    t.integer  "area_id"
    t.integer  "usuario_id"
    t.text     "objectivo_area_funcional"
    t.text     "descripcion_funcion_principal"
    t.text     "descripcion_funciones_especificas"
    t.text     "relaciones_coordinacion_interna"
    t.text     "relacionamiento_interinstitucional"
    t.date     "fecha_aprovacion"
    t.date     "fecha_actualizacion"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "principales_resultados"
    t.string   "ci",                                 :limit => 20
    t.string   "nombre"
    t.string   "apellido"
    t.string   "cargo"
    t.string   "nivel_jerarquico"
    t.string   "inmediato_superior"
    t.string   "areas_dependientes"
    t.string   "tipo_area"
  end

  create_table "niveles", :force => true do |t|
    t.string   "nombre"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tipos", :force => true do |t|
    t.string   "nombre"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "login",                     :limit => 40
    t.string   "name",                      :limit => 100, :default => ""
    t.string   "email",                     :limit => 100
    t.string   "crypted_password",          :limit => 40
    t.string   "salt",                      :limit => 40
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "remember_token",            :limit => 40
    t.datetime "remember_token_expires_at"
  end

  add_index "users", ["login"], :name => "index_users_on_login", :unique => true

end
