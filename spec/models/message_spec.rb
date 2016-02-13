require 'rails_helper'

RSpec.describe Message, type: :model do
  describe '#create' do
    before do
      create(:message)
      @message = Message.find(1)
    end
    it 'succeeds with message' do
      expect(@message.valid?).to be true
    end
    it 'fails with empty message' do
      @message.message = ' '
      expect(@message.valid?).to be false
    end
  end
end
