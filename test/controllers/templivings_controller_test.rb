require 'test_helper'

class TemplivingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @templiving = templivings(:one)
  end

  test "should get index" do
    get templivings_url
    assert_response :success
  end

  test "should get new" do
    get new_templiving_url
    assert_response :success
  end

  test "should create templiving" do
    assert_difference('Templiving.count') do
      post templivings_url, params: { templiving: { name: @templiving.name, rec: @templiving.rec, val: @templiving.val, valH: @templiving.valH } }
    end

    assert_redirected_to templiving_url(Templiving.last)
  end

  test "should show templiving" do
    get templiving_url(@templiving)
    assert_response :success
  end

  test "should get edit" do
    get edit_templiving_url(@templiving)
    assert_response :success
  end

  test "should update templiving" do
    patch templiving_url(@templiving), params: { templiving: { name: @templiving.name, rec: @templiving.rec, val: @templiving.val, valH: @templiving.valH } }
    assert_redirected_to templiving_url(@templiving)
  end

  test "should destroy templiving" do
    assert_difference('Templiving.count', -1) do
      delete templiving_url(@templiving)
    end

    assert_redirected_to templivings_url
  end
end
