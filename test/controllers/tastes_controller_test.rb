require 'test_helper'

class TastesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @taste = tastes(:one)
  end

  test "should get index" do
    get tastes_url
    assert_response :success
  end

  test "should get new" do
    get new_taste_url
    assert_response :success
  end

  test "should create taste" do
    assert_difference('Taste.count') do
      post tastes_url, params: { taste: { id: @taste.id, name: @taste.name } }
    end

    assert_redirected_to taste_url(Taste.last)
  end

  test "should show taste" do
    get taste_url(@taste)
    assert_response :success
  end

  test "should get edit" do
    get edit_taste_url(@taste)
    assert_response :success
  end

  test "should update taste" do
    patch taste_url(@taste), params: { taste: { id: @taste.id, name: @taste.name } }
    assert_redirected_to taste_url(@taste)
  end

  test "should destroy taste" do
    assert_difference('Taste.count', -1) do
      delete taste_url(@taste)
    end

    assert_redirected_to tastes_url
  end
end
