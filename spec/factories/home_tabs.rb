FactoryBot.define do
  factory :home_tab do
  	title  { Faker::Name.last_name }  
  end
end
