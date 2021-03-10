# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_03_09_050111) do

  create_table "clientes", force: :cascade do |t|
    t.integer "cpf"
    t.string "nome"
    t.integer "telefone"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "produtos", force: :cascade do |t|
    t.string "descricao"
    t.integer "quantidade"
    t.string "categoria"
    t.string "subcategoria"
    t.float "valor"
    t.string "tamanho"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
  end

  create_table "vendas", force: :cascade do |t|
    t.float "valorTotal"
    t.integer "produto_id", null: false
    t.integer "cliente_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["cliente_id"], name: "index_vendas_on_cliente_id"
    t.index ["produto_id"], name: "index_vendas_on_produto_id"
  end

  add_foreign_key "vendas", "clientes"
  add_foreign_key "vendas", "produtos"
end
