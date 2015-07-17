require 'test_helper'

class StaticPagesControllerTest < ActionController::TestCase
  test "gets home" do
    get :home
    assert_response :success
    assert_select 'title', 'Home | Ruby on Rails Tutorial Sample App'
  end

  test "gets help" do
    get :help
    assert_response :success
    assert_select 'title', 'Help | Ruby on Rails Tutorial Sample App'  end

  test 'gets about' do
    get :about
    assert_response :success
    assert_select 'title', 'About | Ruby on Rails Tutorial Sample App'
  end
end
