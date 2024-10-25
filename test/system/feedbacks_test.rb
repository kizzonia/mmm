require "application_system_test_case"

class FeedbacksTest < ApplicationSystemTestCase
  setup do
    @feedback = feedbacks(:one)
  end

  test "visiting the index" do
    visit feedbacks_url
    assert_selector "h1", text: "Feedbacks"
  end

  test "creating a Feedback" do
    visit feedbacks_url
    click_on "New Feedback"

    fill_in "Body", with: @feedback.body
    fill_in "Icon", with: @feedback.icon
    fill_in "Slug", with: @feedback.slug
    fill_in "Sub title", with: @feedback.sub_title
    fill_in "Title", with: @feedback.title
    click_on "Create Feedback"

    assert_text "Feedback was successfully created"
    click_on "Back"
  end

  test "updating a Feedback" do
    visit feedbacks_url
    click_on "Edit", match: :first

    fill_in "Body", with: @feedback.body
    fill_in "Icon", with: @feedback.icon
    fill_in "Slug", with: @feedback.slug
    fill_in "Sub title", with: @feedback.sub_title
    fill_in "Title", with: @feedback.title
    click_on "Update Feedback"

    assert_text "Feedback was successfully updated"
    click_on "Back"
  end

  test "destroying a Feedback" do
    visit feedbacks_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Feedback was successfully destroyed"
  end
end
