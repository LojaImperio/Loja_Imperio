class CreateProdutos < ActiveRecord::Migration[6.0]
  def change
    create_table :produtos do |t|
      t.string :descricao
      t.integer :quantidade
      t.string :categoria
      t.string :subcategoria
      t.float :valor
      t.string :tamanho

      t.timestamps
    end
  end
end
