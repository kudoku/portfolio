require 'test_helper'

class StaticPagesControllerTest < ActionController::TestCase

  def setup
    @base_title = "Portfolio"
  end

  test 'landing' do 
    get :landing
    assert_response :success
    assert_select "title", "Landing | #{@base_title}"
  end

  # test 'contact'

  # test 'projects'

  # test 'about'

end
