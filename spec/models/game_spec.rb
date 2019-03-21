require 'rails_helper'

RSpec.describe Game, type: :model do
  before(:all) do
  	@user     = FactoryBot.create(:user)
  	@article  = FactoryBot.create(:article)
  	@comment  = FactoryBot.create(:comment)
  	@game     = FactoryBot.create(:game)
   	@donation = FactoryBot.create(:donation)
  	@like     = FactoryBot.create(:like)
  	@score    = FactoryBot.create(:score)
  end

  context "validation" do
	    it "is valid with valid attributes" do
	      expect(@game).to be_a(Game)
	      expect(@game).to be_valid
	    end
	end

	 context 'associations' do
    it { should have_many(:donations) }
    it { should have_many(:scores) }
    it { should have_many(:users).through(:scores) }
  end
end
