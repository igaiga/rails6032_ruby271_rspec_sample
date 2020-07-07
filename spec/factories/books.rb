FactoryBot.define do
  factory :book do
    title { "RubyBook" }
    memo { "Good" }
  end

  trait :with_variations do
    after(:create) do |book|
#      book.variations.create!(kind: "paper book")
      book.variations.create!(FactoryBot.build(:variation).attributes)
    end
  end
end
