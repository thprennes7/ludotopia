require 'rails_helper'

RSpec.describe Status, type: :model do
  before(:all) do
  	@user     = FactoryBot.create(:user)
  	@article  = FactoryBot.create(:article)
  	@comment  = FactoryBot.create(:comment)
  	@game     = FactoryBot.create(:game)
   	@donation = FactoryBot.create(:donation)
  	@like     = FactoryBot.create(:like)
  	@score    = FactoryBot.create(:score)
  	@statu    = FactoryBot.create(:status)
  end

context "validation" do
	    it "is valid with valid attributes" do
	      expect(@user).to be_a(User)
	      expect(@user).to be_valid
	    end
	end

context 'associations' do
    it { should have_many(:users) }
  end

end
 