class Produto < ApplicationRecord
    validates :descricao, presence: true, format: {with: /[A-Za-z0-9]+/}, length: {maximum: 1000, too_long: "%{count} characters is the maximum allowed" }, uniqueness: true
    validates :quantidade, numericality: { only_integer: true }
    validates :categoria, presence: true
    validates :subcategoria, presence: true
    validates :valor, numericality: true
    validates :tamanho, presence: true
end
