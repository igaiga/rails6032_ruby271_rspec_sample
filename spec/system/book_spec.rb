require "rails_helper"

RSpec.describe "books", type: :system do
  it "enables me to create widgets" do
    visit "/books"
    expect(page).to have_text("Books")
  end
end
