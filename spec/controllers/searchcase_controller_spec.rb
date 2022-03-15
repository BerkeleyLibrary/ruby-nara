# frozen_string_literal:true

require 'rails_helper'

describe SearchcaseController, 'Searchcase controller', type: :controller do
  render_views
  describe 'search searchcase' do
    it 'searches against all when fed no values' do
      get :display
      expect(@return).to be_nil
    end
    it 'Notifies user of no results when nothing found' do
      get :display, params: { q: 'bad search data' }
      expect(response.body).to include('redirected')
    end
  end
end
