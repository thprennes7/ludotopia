FactoryBot.define do
  factory :comment do
    article_id {Article.last.id}
    user_id {User.last.id}
    description {"MyText"}
  end
end
