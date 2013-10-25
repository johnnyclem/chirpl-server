require 'test_helper'

class OutputsControllerTest < ActionController::TestCase
  setup do
    @output = outputs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:outputs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create output" do
    assert_difference('Output.count') do
      post :create, output: { duration: @output.duration, height: @output.height, id: @output.id, job_id: @output.job_id, key: @output.key, presetId: @output.presetId, rotate: @output.rotate, segmentDuration: @output.segmentDuration, status: @output.status, thumbnailPattern: @output.thumbnailPattern, width: @output.width }
    end

    assert_redirected_to output_path(assigns(:output))
  end

  test "should show output" do
    get :show, id: @output
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @output
    assert_response :success
  end

  test "should update output" do
    patch :update, id: @output, output: { duration: @output.duration, height: @output.height, id: @output.id, job_id: @output.job_id, key: @output.key, presetId: @output.presetId, rotate: @output.rotate, segmentDuration: @output.segmentDuration, status: @output.status, thumbnailPattern: @output.thumbnailPattern, width: @output.width }
    assert_redirected_to output_path(assigns(:output))
  end

  test "should destroy output" do
    assert_difference('Output.count', -1) do
      delete :destroy, id: @output
    end

    assert_redirected_to outputs_path
  end
end
