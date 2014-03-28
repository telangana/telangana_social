require 'test_helper'

class FbTokensControllerTest < ActionController::TestCase
  setup do
    @fb_token = fb_tokens(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:fb_tokens)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create fb_token" do
    assert_difference('FbToken.count') do
      post :create, fb_token: { access_token: @fb_token.access_token, name: @fb_token.name }
    end

    assert_redirected_to fb_token_path(assigns(:fb_token))
  end

  test "should show fb_token" do
    get :show, id: @fb_token
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @fb_token
    assert_response :success
  end

  test "should update fb_token" do
    patch :update, id: @fb_token, fb_token: { access_token: @fb_token.access_token, name: @fb_token.name }
    assert_redirected_to fb_token_path(assigns(:fb_token))
  end

  test "should destroy fb_token" do
    assert_difference('FbToken.count', -1) do
      delete :destroy, id: @fb_token
    end

    assert_redirected_to fb_tokens_path
  end
end
