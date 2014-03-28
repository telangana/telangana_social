require 'test_helper'

class SlogansControllerTest < ActionController::TestCase
  setup do
    @slogan = slogans(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:slogans)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create slogan" do
    assert_difference('Slogan.count') do
      post :create, slogan: { content: @slogan.content, name: @slogan.name, user_id: @slogan.user_id }
    end

    assert_redirected_to slogan_path(assigns(:slogan))
  end

  test "should show slogan" do
    get :show, id: @slogan
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @slogan
    assert_response :success
  end

  test "should update slogan" do
    patch :update, id: @slogan, slogan: { content: @slogan.content, name: @slogan.name, user_id: @slogan.user_id }
    assert_redirected_to slogan_path(assigns(:slogan))
  end

  test "should destroy slogan" do
    assert_difference('Slogan.count', -1) do
      delete :destroy, id: @slogan
    end

    assert_redirected_to slogans_path
  end
end
