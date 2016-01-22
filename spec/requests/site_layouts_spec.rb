# require 'rails_helper'

# RSpec.describe "SiteLayouts", type: :request do
#   describe "GET /site_layouts" do
#     it "works! (now write some real specs)" do
#       get site_layouts_path
#       expect(response).to have_http_status(200)
#     end
#   end
# end

require 'rails_helper'
class SiteLayoutTest < ActionDispatch::IntegrationTest

	test "layout links"  do
		get root_path
		assert_template 'static_pages/home'
		assert_template "a[href=?]", root_path, count: 2
		assert_template "a[href=?]", help_path
		assert_template "a[href=?]", about_path
		assert_template "a[href=?]", contact_path
    end 
end 
