require 'rails_helper'

RSpec.describe Article, type: :model do

  before(:each) do
  	@article = FactoryBot.create(:article)
  end

  context "validation" do
  	it "is valid with valid attributes" do
  		expect(@article).to be_a(Article)
  		expect(@article).to be_valid
  	end
  end
end
