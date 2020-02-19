require 'test_helper'

class TemproomsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @temproom = temprooms(:one)
  end

  test "should get index" do
    get temprooms_url
    assert_response :success
  end

  test "should get new" do
    get new_temproom_url
    assert_response :success
  end

  test "should create temproom" do
    assert_difference('Temproom.count') do
      post temprooms_url, params: { temproom: { name: @temproom.name, rec: @temproom.rec, val: @temproom.val, valH: @temproom.valH } }
    end

    assert_redirected_to temproom_url(Temproom.last)
  end

  test "should show temproom" do
    get temproom_url(@temproom)
    assert_response :success
  end

  test "should get edit" do
    get edit_temproom_url(@temproom)
    assert_response :success
  end

  test "should update temproom" do
    patch temproom_url(@temproom), params: { temproom: { name: @temproom.name, rec: @temproom.rec, val: @temproom.val, valH: @temproom.valH } }
    assert_redirected_to temproom_url(@temproom)
  end

  test "should destroy temproom" do
    assert_difference('Temproom.count', -1) do
      delete temproom_url(@temproom)
    end

    assert_redirected_to temprooms_url
  end
end
