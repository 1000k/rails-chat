require 'rails_helper'

RSpec.describe MessagesController, type: :controller do
  before do
    create(:message)
  end

  describe '#index' do
    it 'return index' do
      get :index
      expect(response).to render_template(:index)
    end
  end

  describe '#create' do
    it 'saves message' do
      expect do
        post :create, message: { message: 'foobar' }
      end.to change(Message, :count).by(1)
      expect(response).to render_template(:index)
    end
    it 'does not save message without valid content' do
      expect do
        post :create, message: { message: ' ' }
      end.not_to change(Message, :count)
      expect(response).to render_template(:index)
    end
  end
end
