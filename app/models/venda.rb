class Venda < ApplicationRecord
  validates :valorTotal, numericality: true
  belongs_to :produto
  belongs_to :cliente
end
