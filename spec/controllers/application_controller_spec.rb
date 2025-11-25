# frozen_string_literal:true

require 'rails_helper'

describe ApplicationController, type: :controller do
  render_views
  describe '#index' do
    it 'renders the index template' do
      get :index
      expect(response.body).to match(/Early Arrivals Search/)
    end
  end
end
