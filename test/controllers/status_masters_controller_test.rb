require 'test_helper'

class StatusMastersControllerTest < ActionController::TestCase
  setup do
    @status_master = status_masters(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:status_masters)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create status_master" do
    assert_difference('StatusMaster.count') do
      post :create, status_master: { active: @status_master.active, description: @status_master.description, name: @status_master.name }
    end

    assert_redirected_to status_master_path(assigns(:status_master))
  end

  test "should show status_master" do
    get :show, id: @status_master
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @status_master
    assert_response :success
  end

  test "should update status_master" do
    patch :update, id: @status_master, status_master: { active: @status_master.active, description: @status_master.description, name: @status_master.name }
    assert_redirected_to status_master_path(assigns(:status_master))
  end

  test "should destroy status_master" do
    assert_difference('StatusMaster.count', -1) do
      delete :destroy, id: @status_master
    end

    assert_redirected_to status_masters_path
  end
end
