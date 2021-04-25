require 'rails_helper' 
describe User do 
    it "é válido quando email e senha estão presentes" do 
        user = User.new( email: 'bruce@ironmaiden.com', password: '123456') 
        expect(user).to be_valid 
    end 
    it "é invalido sem o email" do 
        user = User.new(email: nil) 
        user.valid?   
        expect(user.errors[:firstname]).to include("can't be blank") 
    end
    it "é inválido caso já exista um e-mail igual" do 
        user = User.new(email: 'bruce@ironmaiden.com', password: '123456') 
        user = User.new(email: 'bruce@ironmaiden.com', password: '654123') 
        user.valid? 
        expect(user.errors[:email]).to include('has already been taken')
    end 
end