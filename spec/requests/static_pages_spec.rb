require 'spec_helper'

describe "Static Pages" do

  describe "Lobby page" do

    it "should have the right title" do
      visit '/static_pages/lobby'
      expect(page).to have_title("Blackjack")
    end
    it "should have the content 'Lobby'" do
      visit '/static_pages/lobby'
      expect(page).to have_content('Lobby')
    end
  end
end
