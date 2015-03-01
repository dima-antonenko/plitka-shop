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

ActiveRecord::Schema.define(version: 20150228233710) do

  create_table "carts", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "categories", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.string   "meta_title"
    t.string   "meta_description"
    t.string   "meta_keywords"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "collections", force: :cascade do |t|
    t.integer  "category_id"
    t.string   "name"
    t.string   "description"
    t.string   "interior_list"
    t.string   "brand"
    t.string   "country"
    t.string   "size"
    t.string   "meta_title"
    t.string   "meta_description"
    t.string   "meta_keywords"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  add_index "collections", ["category_id"], name: "index_collections_on_category_id"
  add_index "collections", ["description"], name: "index_collections_on_description"
  add_index "collections", ["interior_list"], name: "index_collections_on_interior_list"
  add_index "collections", ["name"], name: "index_collections_on_name"

  create_table "products", force: :cascade do |t|
    t.integer  "collection_id"
    t.string   "name"
    t.string   "code"
    t.integer  "price"
    t.string   "edizm"
    t.string   "field_of_application_list"
    t.string   "place_in_the_collection"
    t.string   "minpart"
    t.string   "cratnost"
    t.string   "weight"
    t.string   "size"
    t.string   "architectural_surface"
    t.string   "base_value"
    t.string   "color_value"
    t.string   "cover_value"
    t.string   "surface_alue"
    t.string   "image"
    t.string   "meta_title"
    t.string   "meta_description"
    t.string   "meta_keywords"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  add_index "products", ["code"], name: "index_products_on_code"
  add_index "products", ["collection_id"], name: "index_products_on_collection_id"
  add_index "products", ["field_of_application_list"], name: "index_products_on_field_of_application_list"
  add_index "products", ["image"], name: "index_products_on_image"
  add_index "products", ["name"], name: "index_products_on_name"
  add_index "products", ["price"], name: "index_products_on_price"

end
