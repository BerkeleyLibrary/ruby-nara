# frozen_string_literal:true

require 'rails_helper'

describe ApplicationController, 'Application controller', type: :controller do
  render_views
  describe 'Land on saerch page' do
    it 'renders the index template' do
      get :index
      expect(response.body).to match(/Early Arrivals Search/)
    end
  end
end
