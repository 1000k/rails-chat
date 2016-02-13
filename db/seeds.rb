require 'ffaker'

100.times do |n|
  Message.create!(message: FFaker::Lorem.paragraph)
end