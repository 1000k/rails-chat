require 'rails_helper'

RSpec.describe Message, type: :model do
  describe '#create' do
    let(:message) { Message.new(message: 'sample') }
    it 'succeeds with message' do
      expect(message.valid?).to be true
    end
    it 'fails with empty message' do
      message.message = ' '
      expect(message.valid?).to be false
    end
  end
end
