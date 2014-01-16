require "spec_helper"

describe "My search page" do
  it "has results" do
    visit "http://www.google.com"
    fill_in "q", with: "Vim"
    click_on "Google Search"
    page.text.must_include "www.vim.org"
    page.text.must_include "www.vim.org/download.php"
  end
end
