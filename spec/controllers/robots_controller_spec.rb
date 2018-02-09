require 'rails_helper'

RSpec.describe RobotsController, type: :controller do
  describe '#index' do
    before { get :index, format: :json }

    it { expect(response.code).to eq '200' }

    it 'body is JSON' do
      expect { JSON.parse(response.body) }.to_not raise_error
    end
  end
end
