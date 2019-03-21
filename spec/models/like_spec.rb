require 'rails_helper'

RSpec.describe Like, type: :model do
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
	      expect(@like).to be_a(Like)
	      expect(@like).to be_valid
	    end
	end

  context 'associations' do
    it { should belong_to(:article) }
    it { should belong_to(:user) }
  end

end
 
