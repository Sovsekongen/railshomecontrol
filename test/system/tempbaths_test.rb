require "application_system_test_case"

class TempbathsTest < ApplicationSystemTestCase
  setup do
    @tempbath = tempbaths(:one)
  end

  test "visiting the index" do
    visit tempbaths_url
    assert_selector "h1", text: "Tempbaths"
  end

  test "creating a Tempbath" do
    visit tempbaths_url
    click_on "New Tempbath"

    fill_in "Name", with: @tempbath.name
    fill_in "Rec", with: @tempbath.rec
    fill_in "Val", with: @tempbath.val
    fill_in "Valh", with: @tempbath.valH
    click_on "Create Tempbath"

    assert_text "Tempbath was successfully created"
    click_on "Back"
  end

  test "updating a Tempbath" do
    visit tempbaths_url
    click_on "Edit", match: :first

    fill_in "Name", with: @tempbath.name
    fill_in "Rec", with: @tempbath.rec
    fill_in "Val", with: @tempbath.val
    fill_in "Valh", with: @tempbath.valH
    click_on "Update Tempbath"

    assert_text "Tempbath was successfully updated"
    click_on "Back"
  end

  test "destroying a Tempbath" do
    visit tempbaths_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Tempbath was successfully destroyed"
  end
end
