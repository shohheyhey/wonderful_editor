FactoryBot.define do
  factory :comment do
    user { nil }
    article { nil }
    body { "MyText" }
  end
end
