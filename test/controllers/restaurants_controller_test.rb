require 'test_helper'

class RestaurantsControllerTest < ActionController::TestCase
	
  test "should get index as json" do
  	get :index, :format => 'json'
  	assert_response :success
  end

  test "should get index as xml" do
  	get :index, :format => 'xml'
  	assert_response :success
  end
end
