Given(/^I am a player$/) do
end

When(/^I go to the Blackjack app$/) do
  visit lobby_path
end

Then(/^I should see the Lobby$/) do
  expect(page).to have_css('.test-lobby-header')
end

# Game Tables List
When(/^I view the game tables list$/) do
end

Then(/^I should see a link to "(.*?)" Table$/) do |item_name|
  expect(page).to have_css("a" + convert_item_name_to_class_name(item_name))
end

# User Stats Widget
When(/^I view the User Statistics Widget$/) do
end

Then(/^I should see an aside box$/) do
  expect(page).to have_css('aside#user-statistics-widget')
end

When(/^I view the contents of the User Statistics Widget$/) do
end

Then(/^The widget should contain my "(.*?)"$/) do |item_name|
  widget = find('aside#user-statistics-widget')
  expect(widget).to have_css(convert_item_name_to_class_name(item_name))
end

Then(/^The widget should contain an Edit link$/) do
  widget = find('aside#user-statistics-widget')
  expect(widget).to have_css('.test-edit-link')
end

def convert_item_name_to_class_name item_name
  ".test-" + item_name.downcase.gsub(" ", "-")
end
