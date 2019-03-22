require 'rails_helper'

RSpec.describe Banner, type: :model do
  
  before(:each) do
  	@banner = FactoryBot.create(:banner)
  end

  context "validation" do
  	it "is valid with valid attributes" do
  		expect(@banner).to be_a(Banner)
  		expect(@banner).to be_valid
  	end
  end
end
 