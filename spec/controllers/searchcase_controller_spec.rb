# frozen_string_literal:true

require 'spec_helper'

describe SearchcaseController, 'Searchcase controller', type: :controller do
  render_views
  describe 'search searchcase' do
    it 'searches against all when fed no values' do
      get :display
      expect(@return).to be_nil
    end
    it 'Notifies user of no results when nothing found' do
      get :display, params: { q: 'bad search data' }
      response.body.should match('redirected')
    end
  end
end
