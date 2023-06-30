FactoryBot.define do
  factory :user do
    trait :a do
      id { 1 }
      email { "email@1.com" }
      password { "password1" }
    end
    
    trait :b do
      id { 2 }
      email { "email@2.com" }
      password { "password2" }
    end
    
    trait :c do
      id { 3 }
      email { "email@3.com" }
      password { "password3" }
    end
  end
end
