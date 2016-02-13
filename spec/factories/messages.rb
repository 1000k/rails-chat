FactoryGirl.define do
  factory :message do
    message FFaker::Lorem.paragraph
  end
end
