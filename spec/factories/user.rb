FactoryBot.define do
  factory :user do
    email { Faker::Internet.email }
    profile { 'hogehogehoge'}
    password { 'password' }
    password_confirmation { 'password' }
  end
end