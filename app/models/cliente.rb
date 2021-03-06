class Cliente < ApplicationRecord
    validates :cpf, presence: true, length: { is: 11 } , uniqueness: true
    validates :nome, presence: true, length: {minimum: 3}
    validates :telefone, numericality: { only_integer: true }
end
