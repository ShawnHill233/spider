require 'rails_helper'

describe SpidersController do

  describe 'index' do
    it 'index' do
      get 'index'
      expect(response).to render_template :index
    end
  end
end