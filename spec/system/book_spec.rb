require "rails_helper"

RSpec.describe "books", type: :system do
  before do
    driven_by(:selenium_chrome)
  end

  it "GET /books" do
    visit "/books"
    expect(page).to have_text("Books")
  end
end
