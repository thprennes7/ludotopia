require 'rails_helper'

RSpec.describe Donation, type: :model do
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
		      expect(@donation).to be_a(Donation)
		      expect(@donation).to be_valid
		    end
	  end

	context "associations" do
  	it { should belong_to (:game) }
  	it { should belong_to (:user) }
  end

end
