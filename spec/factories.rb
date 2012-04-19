FactoryGirl.define do
  factory :user do
    name "John Doe"
    email "John@example.com"
    password "foobar"
    password_confirmation "foobar"
  end
end
