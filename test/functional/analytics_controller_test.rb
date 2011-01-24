require 'test_helper'

class AnalyticsControllerTest < ActionController::TestCase
  setup do
    @analytic = analytics(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:analytics)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create analytic" do
    assert_difference('Analytic.count') do
      post :create, :analytic => @analytic.attributes
    end

    assert_redirected_to analytic_path(assigns(:analytic))
  end

  test "should show analytic" do
    get :show, :id => @analytic.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @analytic.to_param
    assert_response :success
  end

  test "should update analytic" do
    put :update, :id => @analytic.to_param, :analytic => @analytic.attributes
    assert_redirected_to analytic_path(assigns(:analytic))
  end

  test "should destroy analytic" do
    assert_difference('Analytic.count', -1) do
      delete :destroy, :id => @analytic.to_param
    end

    assert_redirected_to analytics_path
  end
end
