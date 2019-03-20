require 'rails_helper'

RSpec.describe User, type: :model do
  before(:all) do
  	@user = FactoryBot.create(:user)
  end

context "validation" do
    it "is valid with valid attributes" do
      expect(@user).to be_a(User)
      expect(@user).to be_valid
    end
end


end
