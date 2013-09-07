require 'test_helper'

class StundeControllerTest < ActionController::TestCase
  test "should get date:datetime" do
    get :date:datetime
    assert_response :success
  end

  test "should get notes:text" do
    get :notes:text
    assert_response :success
  end

  test "should get lesson:references" do
    get :lesson:references
    assert_response :success
  end

end
