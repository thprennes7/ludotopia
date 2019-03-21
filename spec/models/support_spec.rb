require 'rails_helper'

RSpec.describe Support, type: :model do
  before(:all) do
  	@user     = FactoryBot.create(:user)
  	@article  = FactoryBot.create(:article)
  	@comment  = FactoryBot.create(:comment)
  	@game     = FactoryBot.create(:game)
   	@donation = FactoryBot.create(:donation)
  	@like     = FactoryBot.create(:like)
  	@score    = FactoryBot.create(:score)
  	@support  = FactoryBot.create(:support)
  end

	context "validation" do
	    it "is valid with valid attributes" do
	      expect(@support).to be_a(Support)
	      expect(@support).to be_valid
	    end
	end

end
