require 'rails_helper'

RSpec.describe User, type: :model do
  before do
    User.new(name: 'John', email: 'john@example.com',
             password_digest: 'foobar').save
    @user = User.first
  end

  describe 'hello method' do
    it 'is not null' do
      expect(@user.hello).to eq 'John is here'
    end
  end
end
