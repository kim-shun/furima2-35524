FactoryBot.define do
  factory :item do
    item_name {Faker::Lorem.word }
    info { Faker::Lorem.sentence }
    price { Faker::Commerce.price(range: 300..9_999_999, as_string: true) }
    category_id { Faker::Number.between(from: 2, to: 11) }
    prefecture_id { Faker::Number.between(from: 2, to: 48) }
    sales_status_id { Faker::Number.between(from: 2, to: 7) }
    scheduled_delivery_id { Faker::Number.between(from: 2, to: 4) }
    shipping_fee_status_id { Faker::Number.between(from: 2, to: 3) }
    association :user

    after(:build) do |item|
      item.image.attach(io: File.open('public/images/test_image.png'), filename: 'test_image.png')
    end
  end
end
