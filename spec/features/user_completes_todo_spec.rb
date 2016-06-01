require 'rails_helper'

#click on link
#verify 'todo' is completed by referencing completed class in li

feature "User completes todo" do
  scenario "successfully" do
    sign_in

    click_on "Add a new todo"
    fill_in "Title", with: "Buy milk"
    click_on "Submit"

    click_on "Mark Complete"

    expect(page).to have_css '.todos li.completed', text: "Buy milk"
  end
end
