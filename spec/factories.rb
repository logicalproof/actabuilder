FactoryGirl.define do
  factory :user do
    name "John Doe"
    email "John@example.com"
    password "foobar"
    password_confirmation "foobar"
    role nil
    factory :subscriber do
      role "subscriber"
      factory :admin do
        role "admin"
      end
    end
  end
end
