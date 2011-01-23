require 'test_helper'

class TuplesControllerTest < ActionController::TestCase
  setup do
    @tuple = tuples(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tuples)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tuple" do
    assert_difference('Tuple.count') do
      post :create, :tuple => @tuple.attributes
    end

    assert_redirected_to tuple_path(assigns(:tuple))
  end

  test "should show tuple" do
    get :show, :id => @tuple.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @tuple.to_param
    assert_response :success
  end

  test "should update tuple" do
    put :update, :id => @tuple.to_param, :tuple => @tuple.attributes
    assert_redirected_to tuple_path(assigns(:tuple))
  end

  test "should destroy tuple" do
    assert_difference('Tuple.count', -1) do
      delete :destroy, :id => @tuple.to_param
    end

    assert_redirected_to tuples_path
  end
end
