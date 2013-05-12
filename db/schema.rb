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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130512200908) do

  create_table "admins", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
  end

  add_index "admins", ["email"], :name => "index_admins_on_email", :unique => true
  add_index "admins", ["reset_password_token"], :name => "index_admins_on_reset_password_token", :unique => true

  create_table "brands", :force => true do |t|
    t.string   "name"
    t.string   "descripcion"
    t.string   "photo"
    t.string   "ruta_pdf"
    t.integer  "type_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "brands", ["type_id"], :name => "index_brands_on_type_id"

  create_table "categories", :force => true do |t|
    t.string   "name"
    t.string   "descripcion"
    t.string   "photo"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "contacts", :force => true do |t|
    t.string   "nombre"
    t.string   "email"
    t.string   "direccion"
    t.string   "ciudad"
    t.string   "telefono"
    t.text     "comentario"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "customers", :force => true do |t|
    t.string   "name"
    t.string   "url_photo"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "welcome_id"
  end

  add_index "customers", ["welcome_id"], :name => "index_customers_on_welcome_id"

  create_table "quotes", :force => true do |t|
    t.string   "nombre"
    t.string   "email"
    t.string   "direccion"
    t.string   "ciudad"
    t.string   "telefono"
    t.text     "comentario"
    t.integer  "brand_id"
    t.integer  "type_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "user_id"
  end

  add_index "quotes", ["brand_id"], :name => "index_quotes_on_brand_id"
  add_index "quotes", ["type_id"], :name => "index_quotes_on_type_id"
  add_index "quotes", ["user_id"], :name => "index_quotes_on_user_id"

  create_table "types", :force => true do |t|
    t.string   "name"
    t.string   "descripcion"
    t.string   "photo"
    t.integer  "category_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "types", ["category_id"], :name => "index_types_on_category_id"

  create_table "users", :force => true do |t|
    t.string   "pais"
    t.string   "ciudad"
    t.string   "nombre"
    t.string   "apellido"
    t.string   "name_empresa"
    t.string   "nit"
    t.string   "genero"
    t.string   "address_empresa"
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
    t.string   "cargo"
    t.string   "celular"
    t.string   "telefono"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

  create_table "welcomes", :force => true do |t|
    t.string   "logo"
    t.string   "name"
    t.text     "leyenda"
    t.text     "mensaje"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
