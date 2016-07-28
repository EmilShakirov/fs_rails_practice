FactoryGirl.define do
  factory :feedback do
    email { "john@example.com" }
    name { "John Doe" }
    message { "Lorem Ipsum" }
  end
end
