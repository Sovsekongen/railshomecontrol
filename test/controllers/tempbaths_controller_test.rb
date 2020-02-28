require 'test_helper'

class TempbathsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tempbath = tempbaths(:one)
  end

  test "should get index" do
    get tempbaths_url
    assert_response :success
  end

  test "should get new" do
    get new_tempbath_url
    assert_response :success
  end

  test "should create tempbath" do
    assert_difference('Tempbath.count') do
      post tempbaths_url, params: { tempbath: { name: @tempbath.name, rec: @tempbath.rec, val: @tempbath.val, valH: @tempbath.valH } }
    end

    assert_redirected_to tempbath_url(Tempbath.last)
  end

  test "should show tempbath" do
    get tempbath_url(@tempbath)
    assert_response :success
  end

  test "should get edit" do
    get edit_tempbath_url(@tempbath)
    assert_response :success
  end

  test "should update tempbath" do
    patch tempbath_url(@tempbath), params: { tempbath: { name: @tempbath.name, rec: @tempbath.rec, val: @tempbath.val, valH: @tempbath.valH } }
    assert_redirected_to tempbath_url(@tempbath)
  end

  test "should destroy tempbath" do
    assert_difference('Tempbath.count', -1) do
      delete tempbath_url(@tempbath)
    end

    assert_redirected_to tempbaths_url
  end
end
