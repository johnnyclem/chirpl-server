require 'test_helper'

class OutputKeysControllerTest < ActionController::TestCase
  setup do
    @output_key = output_keys(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:output_keys)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create output_key" do
    assert_difference('OutputKey.count') do
      post :create, output_key: { name: @output_key.name, playlist_id: @output_key.playlist_id }
    end

    assert_redirected_to output_key_path(assigns(:output_key))
  end

  test "should show output_key" do
    get :show, id: @output_key
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @output_key
    assert_response :success
  end

  test "should update output_key" do
    patch :update, id: @output_key, output_key: { name: @output_key.name, playlist_id: @output_key.playlist_id }
    assert_redirected_to output_key_path(assigns(:output_key))
  end

  test "should destroy output_key" do
    assert_difference('OutputKey.count', -1) do
      delete :destroy, id: @output_key
    end

    assert_redirected_to output_keys_path
  end
end
