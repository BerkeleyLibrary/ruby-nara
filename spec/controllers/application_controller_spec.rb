# frozen_string_literal:true

require 'spec_helper'

describe ApplicationController, 'Application controller', type: :controller do
  render_views
  describe 'Land on saerch page' do
    it 'renders the index template' do
      get :index
      response.body.should match(/NARA/)
    end
  end
end
