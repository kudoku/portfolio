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

  test 'contact' do
    get :contact
    assert_response :success
    assert_select "title", "Contact | #{@base_title}"
  end

  test 'projects' do
    get :projects
    assert_response :success
    assert_select "title", "Projects | #{@base_title}"
  end

  test 'about' do
    get :about
    assert_response :success
    assert_select "title", "About | #{@base_title}"
  end

end
