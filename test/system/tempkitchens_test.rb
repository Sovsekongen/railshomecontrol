require "application_system_test_case"

class TempkitchensTest < ApplicationSystemTestCase
  setup do
    @tempkitchen = tempkitchens(:one)
  end

  test "visiting the index" do
    visit tempkitchens_url
    assert_selector "h1", text: "Tempkitchens"
  end

  test "creating a Tempkitchen" do
    visit tempkitchens_url
    click_on "New Tempkitchen"

    fill_in "Name", with: @tempkitchen.name
    fill_in "Rec", with: @tempkitchen.rec
    fill_in "Val", with: @tempkitchen.val
    fill_in "Valh", with: @tempkitchen.valH
    click_on "Create Tempkitchen"

    assert_text "Tempkitchen was successfully created"
    click_on "Back"
  end

  test "updating a Tempkitchen" do
    visit tempkitchens_url
    click_on "Edit", match: :first

    fill_in "Name", with: @tempkitchen.name
    fill_in "Rec", with: @tempkitchen.rec
    fill_in "Val", with: @tempkitchen.val
    fill_in "Valh", with: @tempkitchen.valH
    click_on "Update Tempkitchen"

    assert_text "Tempkitchen was successfully updated"
    click_on "Back"
  end

  test "destroying a Tempkitchen" do
    visit tempkitchens_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Tempkitchen was successfully destroyed"
  end
end
