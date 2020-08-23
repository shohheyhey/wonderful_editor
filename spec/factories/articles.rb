FactoryBot.define do
  factory :article do
    user { nil }
    title { "title_#{Faker::Internet.username}" }
    body { "body_#{Faker::Internet.user_name}" }
  end
end
