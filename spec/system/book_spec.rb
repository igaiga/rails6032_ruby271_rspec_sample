require "rails_helper"

RSpec.describe "books", type: :system do
  before do
    driven_by(:selenium_chrome)
  end

  it "GET /books" do
    book = FactoryBot.create(:book)
    visit "/books"
    expect(page).to have_text(book.title)
  end

  it "POST /books" do
    visit "/books/new"
    fill_in "Title", with: "RubyBook"
    fill_in "Memo", with: "Nice"
    click_button "Create Book"

    expect(page).to have_text("Book was successfully created.")
  end
end
