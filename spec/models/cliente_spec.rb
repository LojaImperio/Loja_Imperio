require 'rails_helper' 
describe Cliente do 
    it "é válido quando cpf, nome e telefone estão presentes" do 
        cliente = Cliente.new( cpf: '12345678912', nome: 'Julia', telefone: '99601244') 
        expect(cliente).to be_valid 
    end 
    it "é invalido sem o cpf" do 
        cliente = Cliente.new(cpf: nil) 
        cliente.valid?   
        expect(cliente.errors[:cpf]).to include("can't be blank") 
    end
end