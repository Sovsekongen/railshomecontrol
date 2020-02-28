require 'test_helper'

class CoffebagsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @coffeebag = coffebags(:one)
  end

  test "should get index" do
    get coffeebags_url
    assert_response :success
  end

  test "should get new" do
    get new_coffeebag_url
    assert_response :success
  end

  test "should create coffebag" do
    assert_difference('Coffebag.count') do
      post coffeebags_url, params: {coffeebag: {amount: @coffeebag.amount, filter: @coffeebag.filter, id: @coffeebag.id, name: @coffeebag.name, price: @coffeebag.price, rating: @coffeebag.rating, size: @coffeebag.size, timesBought: @coffeebag.timesBought } }
    end

    assert_redirected_to coffeebag_url(Coffeebag.last)
  end

  test "should show coffebag" do
    get coffeebag_url(@coffeebag)
    assert_response :success
  end

  test "should get edit" do
    get edit_coffeebag_url(@coffeebag)
    assert_response :success
  end

  test "should update coffebag" do
    patch coffeebag_url(@coffeebag), params: {coffeebag: {amount: @coffeebag.amount, filter: @coffeebag.filter, id: @coffeebag.id, name: @coffeebag.name, price: @coffeebag.price, rating: @coffeebag.rating, size: @coffeebag.size, timesBought: @coffeebag.timesBought } }
    assert_redirected_to coffeebag_url(@coffeebag)
  end

  test "should destroy coffebag" do
    assert_difference('Coffebag.count', -1) do
      delete coffeebag_url(@coffeebag)
    end

    assert_redirected_to coffeebags_url
  end
end
