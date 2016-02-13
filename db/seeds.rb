require 'ffaker'

100.times do
  time = rand(5.years).seconds.ago
  Message.create!(message: FFaker::Lorem.paragraph,
                  created_at: time,
                  updated_at: time)
end
