require 'test_helper'

class EventTicketTypesControllerTest < ActionController::TestCase
  setup do
    @event_ticket_type = event_ticket_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:event_ticket_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create event_ticket_type" do
    assert_difference('EventTicketType.count') do
      post :create, event_ticket_type: { description: @event_ticket_type.description, max: @event_ticket_type.max, min: @event_ticket_type.min, name: @event_ticket_type.name, price: @event_ticket_type.price }
    end

    assert_redirected_to event_ticket_type_path(assigns(:event_ticket_type))
  end

  test "should show event_ticket_type" do
    get :show, id: @event_ticket_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @event_ticket_type
    assert_response :success
  end

  test "should update event_ticket_type" do
    patch :update, id: @event_ticket_type, event_ticket_type: { description: @event_ticket_type.description, max: @event_ticket_type.max, min: @event_ticket_type.min, name: @event_ticket_type.name, price: @event_ticket_type.price }
    assert_redirected_to event_ticket_type_path(assigns(:event_ticket_type))
  end

  test "should destroy event_ticket_type" do
    assert_difference('EventTicketType.count', -1) do
      delete :destroy, id: @event_ticket_type
    end

    assert_redirected_to event_ticket_types_path
  end
end
