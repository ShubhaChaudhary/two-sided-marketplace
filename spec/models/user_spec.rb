require 'rails_helper'

RSpec.describe User, type: :model do
  # creating context for user validation
  context 'validation tests' do 
    # This ensures that the name is entered and false otherwise
    it 'ensures full name presence' do 
      user = User.new(email: "John Doe").save
      expect(user).to eq(false)
    end

    # This ensures that the email is entered and false otherwise
    it 'ensures email presence' do 
      user = User.new(fullname: "amen.kel@maat.com").save
      expect(user).to eq(false)
    end

    # This ensures that the password is not nil and false otherwise
    it 'ensures password presence' do 
      user = User.new(password: nil).save
      expect(user).to eq(false)
    end

    # This ensures that the image is not nil and false otherwise
    it 'ensures image presence' do 
      user = User.new(image: nil).save
      expect(user).to eq(false)
    end

    # This ensure that the email, fullname and password are presence
    it 'It should save successfully' do 
      user = User.new(fullname: "John Doe", email: "amen.kel@maat.com", password: "JohnDoe", image: "john.png").save
      expect(user).to eq(true)
    end
  end

  context 'scope tests' do     
  end
end
