require "spec_helper"

describe SearchcaseController, "Searchcase controller", :type => :controller  do
  render_views
    describe "search searchcase" do
        it "searches against all when fed no values" do
            get :display
            response.body.should have_selector('#table')
        end
        it "Notifies user of no results when nothing found" do
            get :display, params: { q: 'bad search data' }
            response.body.should match("redirected")
        end
    end
end