class Venda < ApplicationRecord
  validates :valorTotal, numericality: true
  #has_many :produto
  belongs_to :produto
  belongs_to :cliente
end
