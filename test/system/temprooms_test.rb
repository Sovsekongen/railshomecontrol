require "application_system_test_case"

class TemproomsTest < ApplicationSystemTestCase
  setup do
    @temproom = temprooms(:one)
  end

  test "visiting the index" do
    visit temprooms_url
    assert_selector "h1", text: "Temprooms"
  end

  test "creating a Temproom" do
    visit temprooms_url
    click_on "New Temproom"

    fill_in "Name", with: @temproom.name
    fill_in "Rec", with: @temproom.rec
    fill_in "Val", with: @temproom.val
    fill_in "Valh", with: @temproom.valH
    click_on "Create Temproom"

    assert_text "Temproom was successfully created"
    click_on "Back"
  end

  test "updating a Temproom" do
    visit temprooms_url
    click_on "Edit", match: :first

    fill_in "Name", with: @temproom.name
    fill_in "Rec", with: @temproom.rec
    fill_in "Val", with: @temproom.val
    fill_in "Valh", with: @temproom.valH
    click_on "Update Temproom"

    assert_text "Temproom was successfully updated"
    click_on "Back"
  end

  test "destroying a Temproom" do
    visit temprooms_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Temproom was successfully destroyed"
  end
end
