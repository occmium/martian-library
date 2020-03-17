FactoryBot.define do
  factory :user do
    # Use sequence to make sure that the value is unique
    sequence(:email) { |n| "user-#{n}@example.com" }
    sequence(:first_name) { |n| "user-name-#{n}" }
    sequence(:last_name) { |n| "user-surname-#{n}" }
  end

  factory :item do
    sequence(:title) { |n| "item-#{n}" }
    sequence(:description) { |n| "description-#{n}" }
    sequence(:image_url) { |n| "example.com/#{n}" }

    user
  end
end
