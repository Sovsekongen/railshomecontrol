require 'test_helper'

class TempkitchensControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tempkitchen = tempkitchens(:one)
  end

  test "should get index" do
    get tempkitchens_url
    assert_response :success
  end

  test "should get new" do
    get new_tempkitchen_url
    assert_response :success
  end

  test "should create tempkitchen" do
    assert_difference('Tempkitchen.count') do
      post tempkitchens_url, params: { tempkitchen: { name: @tempkitchen.name, rec: @tempkitchen.rec, val: @tempkitchen.val, valH: @tempkitchen.valH } }
    end

    assert_redirected_to tempkitchen_url(Tempkitchen.last)
  end

  test "should show tempkitchen" do
    get tempkitchen_url(@tempkitchen)
    assert_response :success
  end

  test "should get edit" do
    get edit_tempkitchen_url(@tempkitchen)
    assert_response :success
  end

  test "should update tempkitchen" do
    patch tempkitchen_url(@tempkitchen), params: { tempkitchen: { name: @tempkitchen.name, rec: @tempkitchen.rec, val: @tempkitchen.val, valH: @tempkitchen.valH } }
    assert_redirected_to tempkitchen_url(@tempkitchen)
  end

  test "should destroy tempkitchen" do
    assert_difference('Tempkitchen.count', -1) do
      delete tempkitchen_url(@tempkitchen)
    end

    assert_redirected_to tempkitchens_url
  end
end
