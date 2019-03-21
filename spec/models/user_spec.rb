require 'rails_helper'

RSpec.describe User, type: :model do
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
	      expect(@user).to be_a(User)
	      expect(@user).to be_valid
	    end
	end

  context 'associations' do
    it { should have_many(:comments) }
    it { should have_many(:likes) }
    it { should have_many(:scores) }
    it { should have_many(:donations) }
    it { should have_many(:games).through(:scores) } 
    it { should have_many(:contact).with_foreign_key('friend_id') }
    it { should have_many(:contact).class_name('Contact') }
  end

end
