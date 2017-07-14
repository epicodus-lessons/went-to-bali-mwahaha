FactoryGirl.define do

  sequence :email { |n| "basic#{n}@test" }

  factory :user do
    email
    name "test_user"
    password  "test_password"
    password_digest "test_password"
    admin false
  end

  factory :product do
    name "test_product"
    description "test_description"
    price 20
  end

  factory :order do
    user
    status 2
  end

  factory :order_item do
    product
    order
  end
end