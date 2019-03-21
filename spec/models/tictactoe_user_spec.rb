require 'rails_helper'

RSpec.describe TictactoeUser, type: :model do
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
	      expect(@tictactoeUser).to be_a(TictactoeUser)
	      expect(@tictactoeUser).to be_valid
	    end
	end

	context "associations" do
  	it { should belong_to (:tictactoe) }
  	it { should belong_to (:user) }
  end
  
end 
 