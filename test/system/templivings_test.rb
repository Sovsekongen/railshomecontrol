require "application_system_test_case"

class TemplivingsTest < ApplicationSystemTestCase
  setup do
    @templiving = templivings(:one)
  end

  test "visiting the index" do
    visit templivings_url
    assert_selector "h1", text: "Templivings"
  end

  test "creating a Templiving" do
    visit templivings_url
    click_on "New Templiving"

    fill_in "Name", with: @templiving.name
    fill_in "Rec", with: @templiving.rec
    fill_in "Val", with: @templiving.val
    fill_in "Valh", with: @templiving.valH
    click_on "Create Templiving"

    assert_text "Templiving was successfully created"
    click_on "Back"
  end

  test "updating a Templiving" do
    visit templivings_url
    click_on "Edit", match: :first

    fill_in "Name", with: @templiving.name
    fill_in "Rec", with: @templiving.rec
    fill_in "Val", with: @templiving.val
    fill_in "Valh", with: @templiving.valH
    click_on "Update Templiving"

    assert_text "Templiving was successfully updated"
    click_on "Back"
  end

  test "destroying a Templiving" do
    visit templivings_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Templiving was successfully destroyed"
  end
end
