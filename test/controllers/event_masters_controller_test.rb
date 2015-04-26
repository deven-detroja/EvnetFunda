require 'test_helper'

class EventMastersControllerTest < ActionController::TestCase
  setup do
    @event_master = event_masters(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:event_masters)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create event_master" do
    assert_difference('EventMaster.count') do
      post :create, event_master: { capacity: @event_master.capacity, category: @event_master.category, description: @event_master.description, end_date: @event_master.end_date, max: @event_master.max, private: @event_master.private, start_date: @event_master.start_date, status: @event_master.status, sub_category: @event_master.sub_category, title: @event_master.title, url: @event_master.url }
    end

    assert_redirected_to event_master_path(assigns(:event_master))
  end

  test "should show event_master" do
    get :show, id: @event_master
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @event_master
    assert_response :success
  end

  test "should update event_master" do
    patch :update, id: @event_master, event_master: { capacity: @event_master.capacity, category: @event_master.category, description: @event_master.description, end_date: @event_master.end_date, max: @event_master.max, private: @event_master.private, start_date: @event_master.start_date, status: @event_master.status, sub_category: @event_master.sub_category, title: @event_master.title, url: @event_master.url }
    assert_redirected_to event_master_path(assigns(:event_master))
  end

  test "should destroy event_master" do
    assert_difference('EventMaster.count', -1) do
      delete :destroy, id: @event_master
    end

    assert_redirected_to event_masters_path
  end
end
