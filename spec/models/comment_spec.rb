require 'rails_helper'

RSpec.describe Comment, type: :model do
  
  before(:each) do
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
  		expect(@comment).to be_a(Comment)
  		expect(@comment).to be_valid
  	end
  end
  
end
