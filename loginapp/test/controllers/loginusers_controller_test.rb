require 'test_helper'

class LoginusersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @loginuser = loginusers(:one)
  end

  test "should get index" do
    get loginusers_url
    assert_response :success
  end

  test "should get new" do
    get new_loginuser_url
    assert_response :success
  end

  test "should create loginuser" do
    assert_difference('Loginuser.count') do
      post loginusers_url, params: { loginuser: { name: @loginuser.name, password: 'secret', password_confirmation: 'secret' } }
    end

    assert_redirected_to loginuser_url(Loginuser.last)
  end

  test "should show loginuser" do
    get loginuser_url(@loginuser)
    assert_response :success
  end

  test "should get edit" do
    get edit_loginuser_url(@loginuser)
    assert_response :success
  end

  test "should update loginuser" do
    patch loginuser_url(@loginuser), params: { loginuser: { name: @loginuser.name, password: 'secret', password_confirmation: 'secret' } }
    assert_redirected_to loginuser_url(@loginuser)
  end

  test "should destroy loginuser" do
    assert_difference('Loginuser.count', -1) do
      delete loginuser_url(@loginuser)
    end

    assert_redirected_to loginusers_url
  end
end
