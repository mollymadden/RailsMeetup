require "application_system_test_case"

class MeetupsTest < ApplicationSystemTestCase
  setup do
    @meetup = meetups(:one)
  end

  test "visiting the index" do
    visit meetups_url
    assert_selector "h1", text: "Meetups"
  end

  test "creating a Meetup" do
    visit meetups_url
    click_on "New Meetup"

    fill_in "Category", with: @meetup.category_id
    fill_in "Creationdate", with: @meetup.creationdate
    fill_in "Description", with: @meetup.description
    fill_in "Eventdate", with: @meetup.eventdate
    fill_in "Imageurl", with: @meetup.imageURL
    fill_in "Location", with: @meetup.location
    fill_in "Title", with: @meetup.title
    fill_in "User", with: @meetup.user_id
    click_on "Create Meetup"

    assert_text "Meetup was successfully created"
    click_on "Back"
  end

  test "updating a Meetup" do
    visit meetups_url
    click_on "Edit", match: :first

    fill_in "Category", with: @meetup.category_id
    fill_in "Creationdate", with: @meetup.creationdate
    fill_in "Description", with: @meetup.description
    fill_in "Eventdate", with: @meetup.eventdate
    fill_in "Imageurl", with: @meetup.imageURL
    fill_in "Location", with: @meetup.location
    fill_in "Title", with: @meetup.title
    fill_in "User", with: @meetup.user_id
    click_on "Update Meetup"

    assert_text "Meetup was successfully updated"
    click_on "Back"
  end

  test "destroying a Meetup" do
    visit meetups_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Meetup was successfully destroyed"
  end
end
