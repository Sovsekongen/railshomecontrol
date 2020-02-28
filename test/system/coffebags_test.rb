require "application_system_test_case"

class CoffebagsTest < ApplicationSystemTestCase
  setup do
    @coffeebag = coffebags(:one)
  end

  test "visiting the index" do
    visit coffeebags_url
    assert_selector "h1", text: "Coffebags"
  end

  test "creating a Coffebag" do
    visit coffeebags_url
    click_on "New Coffebag"

    fill_in "Amount", with: @coffeebag.amount
    fill_in "Filter", with: @coffeebag.filter
    fill_in "Id", with: @coffeebag.id
    fill_in "Name", with: @coffeebag.name
    fill_in "Price", with: @coffeebag.price
    fill_in "Rating", with: @coffeebag.rating
    fill_in "Size", with: @coffeebag.size
    fill_in "Timesbought", with: @coffeebag.timesBought
    click_on "Create Coffebag"

    assert_text "Coffebag was successfully created"
    click_on "Back"
  end

  test "updating a Coffebag" do
    visit coffeebags_url
    click_on "Edit", match: :first

    fill_in "Amount", with: @coffeebag.amount
    fill_in "Filter", with: @coffeebag.filter
    fill_in "Id", with: @coffeebag.id
    fill_in "Name", with: @coffeebag.name
    fill_in "Price", with: @coffeebag.price
    fill_in "Rating", with: @coffeebag.rating
    fill_in "Size", with: @coffeebag.size
    fill_in "Timesbought", with: @coffeebag.timesBought
    click_on "Update Coffebag"

    assert_text "Coffebag was successfully updated"
    click_on "Back"
  end

  test "destroying a Coffebag" do
    visit coffeebags_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Coffebag was successfully destroyed"
  end
end
