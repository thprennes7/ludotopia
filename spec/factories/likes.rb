FactoryBot.define do
  factory :like do
    article_id {Article.last.id}
    user_id {User.last.id}
  end
end
