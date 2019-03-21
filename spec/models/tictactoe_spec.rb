require 'rails_helper'

RSpec.describe Tictactoe, type: :model do
   before(:all) do
  	@user     			= FactoryBot.create(:user)
  	@article  			= FactoryBot.create(:article)
  	@comment  			= FactoryBot.create(:comment)
  	@game     			= FactoryBot.create(:game)
   	@donation 			= FactoryBot.create(:donation)
  	@like     			= FactoryBot.create(:like)
  	@score    			= FactoryBot.create(:score)
  	@tictactoe  		= FactoryBot.create(:tictactoe)
  	@tictactoeUser  = FactoryBot.create(:tictactoe_user)
  	@tictactoeGrid  = FactoryBot.create(:tictactoe_grid)
  end

  context "validation" do
	    it "is valid with valid attributes" do
	      expect(@tictactoe ).to be_a(Tictactoe)
	      expect(@tictactoe ).to be_valid
	    end
	end

	  context 'associations' do
	  	it { should have_many(:tictactoe_user) }
	  	it { should have_one(:tictactoe_grid) }
	  	it { should validate_presence_of(:status) }
	  end


end
