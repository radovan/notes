require 'test_helper'

class SleepLogsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sleep_logs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sleep_log" do
    assert_difference('SleepLog.count') do
      post :create, :sleep_log => { }
    end

    assert_redirected_to sleep_log_path(assigns(:sleep_log))
  end

  test "should show sleep_log" do
    get :show, :id => sleep_logs(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => sleep_logs(:one).to_param
    assert_response :success
  end

  test "should update sleep_log" do
    put :update, :id => sleep_logs(:one).to_param, :sleep_log => { }
    assert_redirected_to sleep_log_path(assigns(:sleep_log))
  end

  test "should destroy sleep_log" do
    assert_difference('SleepLog.count', -1) do
      delete :destroy, :id => sleep_logs(:one).to_param
    end

    assert_redirected_to sleep_logs_path
  end
end
