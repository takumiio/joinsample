require 'test_helper'

class SharedRoomsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @shared_room = shared_rooms(:one)
  end

  test "should get index" do
    get shared_rooms_url
    assert_response :success
  end

  test "should get new" do
    get new_shared_room_url
    assert_response :success
  end

  test "should create shared_room" do
    assert_difference('SharedRoom.count') do
      post shared_rooms_url, params: { shared_room: { conference_id: @shared_room.conference_id, name: @shared_room.name, user_id: @shared_room.user_id } }
    end

    assert_redirected_to shared_room_url(SharedRoom.last)
  end

  test "should show shared_room" do
    get shared_room_url(@shared_room)
    assert_response :success
  end

  test "should get edit" do
    get edit_shared_room_url(@shared_room)
    assert_response :success
  end

  test "should update shared_room" do
    patch shared_room_url(@shared_room), params: { shared_room: { conference_id: @shared_room.conference_id, name: @shared_room.name, user_id: @shared_room.user_id } }
    assert_redirected_to shared_room_url(@shared_room)
  end

  test "should destroy shared_room" do
    assert_difference('SharedRoom.count', -1) do
      delete shared_room_url(@shared_room)
    end

    assert_redirected_to shared_rooms_url
  end
end
