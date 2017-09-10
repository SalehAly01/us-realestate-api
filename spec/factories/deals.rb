# frozen_string_literal: true

FactoryGirl.define do
  factory :deal do
    street { Faker::Address.street_address }
    city { Faker::Address.city }
    zip { Faker::Address.zip }
    state { Faker::Address.state }
    beds { Faker::Number.digit }
    baths { Faker::Number.digit }
    sq_ft { Faker::Number.number(8) }
    realty_type { Faker::Lorem.word }
    sale_date { Faker::Time.between(DateTime.now - 1, DateTime.now) }
    price { Faker::Number.number(8) }
    latitude { Faker::Address.latitude }
    longitude { Faker::Address.longitude }
  end
end
