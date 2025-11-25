# frozen_string_literal:true

require 'rails_helper'

describe SearchcaseController, 'Searchcase controller', type: :controller do
  render_views
  describe 'search searchcase' do
    it 'searches against all when fed no values' do
      get :display
      expect(@return).to be_nil
    end
    it 'redirects when nothing found' do
      get :display, params: { q: 'bad search data' }
      expect(response).to redirect_to action: :search
    end
    it 'notifies user of no results when nothing found' do
      get :display, params: { q: 'bad search data' }
      expect(request.flash[:notice]).to include('0 results')
    end
  end
end
