require 'rails_helper'

RSpec.describe Comment, type: :model do
  
  before(:each) do
  	@article = FactoryBot.create(:article)
  	FactoryBot.create(:status)
  	@users = FactoryBot.create(:user)
  end

  
end
