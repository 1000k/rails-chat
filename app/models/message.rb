class Message < ActiveRecord::Base
  validates :message, presence: true
  default_scope -> { order(created_at: :desc) }
end
