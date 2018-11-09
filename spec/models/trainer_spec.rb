require 'rails_helper'

RSpec.describe Trainer, type: :model do
  # creating context for user validation
  context 'validation tests' do 
    it 'ensures first name presence' do 
      trainer = Trainer.new(first_name: "").save
      expect(trainer).to eq(false)
    end

    it 'ensures last name presence' do 
      trainer = Trainer.new(last_name: "").save
      expect(trainer).to eq(false)
    end

    it 'ensures phone number presence' do 
      trainer = Trainer.new(phone: "").save
      expect(trainer).to eq(false)
    end

    it 'ensures bio presence' do 
      trainer = Trainer.new(bio: "").save
      expect(trainer).to eq(false)
    end

    it 'ensures experience presence' do 
      trainer = Trainer.new(experience: "").save
      expect(trainer).to eq(false)
    end

    it 'ensures user_id presence' do 
      trainer = Trainer.new(user_id: nil).save
      expect(trainer).to eq(false)
    end

    it 'ensures account_id presence' do 
      trainer = Trainer.new(account_id: nil).save
      expect(trainer).to eq(false)
    end

    it 'ensures avatar presence' do 
      trainer = Trainer.new(avatar_file_name: nil).save
      expect(trainer).to eq(false)
    end

    it 'ensures category_id presence' do 
      trainer = Trainer.new(category_id: nil).save
      expect(trainer).to eq(false)
    end
    

    # This ensure that the email, fullname and password are presence
    it 'It should save successfully' do 
      cat = Category.create!(name: "Cricket")
      trainer = Trainer.new(:photo => "Jery.png", 
                            :first_name => "Jery", 
                            :last_name => "Dony", 
                            :phone => "047000000", 
                            :bio => "Excellente lorem!" , 
                            :experience => "Senior Coach", 
                            :user_id => 1, 
                            :account_id => 1, 
                            :avatar_file_name => "jery.png", 
                            :category_id => cat.id).save
      expect(trainer).to eq(true)
    end
  end

  context 'scope tests' do     
  end
end
