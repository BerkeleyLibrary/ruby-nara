require "spec_helper"

describe SearchcaseController, "Searchcase controller", :type => :controller  do
  render_views
    describe "search searchcase" do
        it "searches against all when fed no values" do
            get :display
            response.body.should have_selector('#table')
        end
    end
end