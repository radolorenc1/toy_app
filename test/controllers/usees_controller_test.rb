require "test_helper"

class UseesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @usee = usees(:one)
  end

  test "should get index" do
    get usees_url
    assert_response :success
  end

  test "should get new" do
    get new_usee_url
    assert_response :success
  end

  test "should create usee" do
    assert_difference('Usee.count') do
      post usees_url, params: { usee: { email: @usee.email, name: @usee.name } }
    end

    assert_redirected_to usee_url(Usee.last)
  end

  test "should show usee" do
    get usee_url(@usee)
    assert_response :success
  end

  test "should get edit" do
    get edit_usee_url(@usee)
    assert_response :success
  end

  test "should update usee" do
    patch usee_url(@usee), params: { usee: { email: @usee.email, name: @usee.name } }
    assert_redirected_to usee_url(@usee)
  end

  test "should destroy usee" do
    assert_difference('Usee.count', -1) do
      delete usee_url(@usee)
    end

    assert_redirected_to usees_url
  end
end
