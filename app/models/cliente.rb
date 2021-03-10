class Cliente < ApplicationRecord
    validates :cpf, presence: true, length: { is: 11 } , uniqueness: true
    validates :nome, presence: true, length: {minimum: 3}
    validates :telefone, numericality: { only_integer: true }
    has_many :produtos, :through => :vendas
    has_many :vendas
end
