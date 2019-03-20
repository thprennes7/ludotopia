require 'rails_helper'

RSpec.describe Contact, type: :model do
  before(:all) do
  	@user     = FactoryBot.create(:user)
  	@article  = FactoryBot.create(:article)
  	@comment  = FactoryBot.create(:comment)
  	@game     = FactoryBot.create(:game)
   	@donation = FactoryBot.create(:donation)
  	@like     = FactoryBot.create(:like)
  	@score    = FactoryBot.create(:score)
  	@contact  = FactoryBot.create(:contact)
  end

  context "validation" do
	    it "is valid with valid attributes" do
	      expect(@contact).to be_a(Contact)
	      expect(@contact).to be_valid
	    end
	end

	context 'associations' do
		it { should belong_to(:me).class_name('User') }
		it { should belong_to(:friend).class_name('User') }
	end
end
 