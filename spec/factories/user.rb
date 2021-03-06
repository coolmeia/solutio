FactoryGirl.define do
  factory :cajueiro, :class => User do
    email 'cajueiro@coolmeia.org'
    name 'cajueiro'
    password '12345678'
    password_confirmation '12345678'
  end

  factory :user do
    sequence(:email) {|n| "user#{n}@coolmeia.org" }
    name 'cajueiro'
    password '12345678'
    password_confirmation '12345678'
  end
end
