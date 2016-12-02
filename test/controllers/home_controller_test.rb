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

  test 'should post request contact but no email' do
  	post :request_contact

  	assert_response :redirect
  	assert_not_empty flash[:alert]
  	assert_nil flash[:notice]
  end

  test 'should post request contact' do
  	post :request_contact,
  		name: "Jack", email: "jacksimmonds0@gmail.com", telephone: "1234567890", message: "Hello"

  	assert_response :redirect
  	assert_nil flash[:alert]
  	assert_not_empty flash[:notice]
  end
end
