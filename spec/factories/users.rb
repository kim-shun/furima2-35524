FactoryBot.define do
  factory :user do
    nickname { Faker::Name.last_name }
    last_name { '山田' }
    first_name { '太郎' }
    last_name_kana { 'ヤマダ' }
    first_name_kana { 'タロウ' }
    birth_date { Faker::Date.birthday }
    email { Faker::Internet.free_email }
    password = 'a1' + Faker::Internet.password(min_length: 4)
    password { password }
    password_confirmation { password }
  end
end
