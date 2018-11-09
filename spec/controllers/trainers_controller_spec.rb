require 'rails_helper'

RSpec.describe TrainersController, type: :controller do
    let(:valid_session) { {} }

    # Test for presence of index action
    context 'GET #index' do 
      it 'returns a success response' do 
        get :index 
        expect(response.successful?)
      end
    end

    # Test for presence of show action
    context 'GET #show' do 
      it 'returns a success response' do 
        cat = Category.create!(name: "Basketball")
        trainer = Trainer.create!(:photo => "John.png", 
                                  :first_name => "John", 
                                  :last_name => "Does", 
                                  :phone => "047000000", 
                                  :bio => "Excellente lorem!" , 
                                  :experience => "Senior Coach", 
                                  :user_id => 1, 
                                  :account_id => 1, 
                                  :avatar_file_name => "john.png", 
                                  :category_id => cat.id)
        get :show, params: {id: trainer.to_param}
        expect(response.successful?)
      end
    end

    # Must comment out before_action :authenticate_user for it to work
    describe "GET #new" do       
      it "returns a success response" do     
        get :new, params: {}, session: valid_session     
        expect(response.successful?)
      end 
    end
  
    # Must comment out before_action :authenticate_user and before_action :check_user for it to work
    describe "GET #edit" do   
    it "returns a success response" do     
      cat = Category.create!(name: "Basketball")
      trainer = Trainer.create!(:photo => "John.png", 
                                :first_name => "John", 
                                :last_name => "Does", 
                                :phone => "047000000", 
                                :bio => "Excellente lorem!" , 
                                :experience => "Senior Coach", 
                                :user_id => 1, 
                                :account_id => 1, 
                                :avatar_file_name => "john.png", 
                                :category_id => cat.id)   
      get :edit, params: {id: trainer.to_param}, session: valid_session     
      expect(response.successful?)  
    end 
  end
end
