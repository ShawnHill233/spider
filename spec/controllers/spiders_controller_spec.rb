require 'rails_helper'

describe SpidersController do

  describe 'index' do
    it 'index' do
      get 'index'
      expect(response).to_not render_template :index
    end
  end
end