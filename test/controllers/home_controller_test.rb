require 'test_helper'

class HomeControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
  end

  test "should get contact" do
  	get :contact
  	assert_response :success

  	assert_template layout: 'application'

  	assert_select 'title', 'Music Library'
  	assert_select 'h1', 'Contact Us'
  	assert_select 'p', 'Complete the following form in order to get in contact with us'
  end
end
