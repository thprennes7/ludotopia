require 'rails_helper'

RSpec.describe HomeTab, type: :model do
  
  before(:each) do
  	@homeTab = FactoryBot.create(:home_tab)
  end

  context "validation" do
  	it "is valid with valid attributes" do
  		expect(@homeTab).to be_a(HomeTab)
  		expect(@homeTab).to be_valid
  	end
  end
end
 