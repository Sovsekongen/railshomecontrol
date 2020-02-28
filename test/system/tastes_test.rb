require "application_system_test_case"

class TastesTest < ApplicationSystemTestCase
  setup do
    @taste = tastes(:one)
  end

  test "visiting the index" do
    visit tastes_url
    assert_selector "h1", text: "Tastes"
  end

  test "creating a Taste" do
    visit tastes_url
    click_on "New Taste"

    fill_in "Id", with: @taste.id
    fill_in "Name", with: @taste.name
    click_on "Create Taste"

    assert_text "Taste was successfully created"
    click_on "Back"
  end

  test "updating a Taste" do
    visit tastes_url
    click_on "Edit", match: :first

    fill_in "Id", with: @taste.id
    fill_in "Name", with: @taste.name
    click_on "Update Taste"

    assert_text "Taste was successfully updated"
    click_on "Back"
  end

  test "destroying a Taste" do
    visit tastes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Taste was successfully destroyed"
  end
end
