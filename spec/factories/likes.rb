FactoryBot.define do
  factory :like do
    article {Article.last}
    user {User.last}
    comment {Comment.last}
  end
end
