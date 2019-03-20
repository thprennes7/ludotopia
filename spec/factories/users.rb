FactoryBot.define do
  factory :user do
    first_name {"MyString"}
    last_name {"MyString"}
    username {"MyString"}
    email {"MyString"}
    password {"MyString"}
    status_id {1}
  end
end
