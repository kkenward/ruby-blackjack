# def get_game_table_path
#   if @game_table_path.nil?
#     @game_table_path = { "High Rollers" => "/static_pages/table", "Intermediates" => "/static_pages/table", "Beginners" => "/static_pages/table" }
#   end
#   @game_table_path
# end

# def set_game_table_path(game_table, url)
#   @game_table_path[game_table] = url
# end

When(/^I visit the Lobby$/) do
  step('I go to the Blackjack app')
end

When(/^I select the "(.*?)" table$/) do |game_table|
#  path = get_game_table_path
  find('a' + convert_item_name_to_class_name(game_table)).click
#  set_game_table_path(game_table, current_url) 
end

Then(/^I should be directed to the "(.*?)" table$/) do |game_table|
  expect(page).to have_css('.test-table-header')
end

Then(/^I should see the table name "(.*?)" Table$/) do |game_table|
  expect(page).to have_content(game_table + " Table")
end

Then(/^I should see a "(.*?)" link$/) do |the_link|
  expect(page).to have_css("a" + convert_item_name_to_class_name(the_link))
end

Then(/^I should see a "(.*?)" button$/) do |the_button|
  expect(page).to have_css("button" + convert_item_name_to_class_name(the_button) + "-btn")
end

Then(/^I should see a "(.*?)" avatar$/) do |avatar|
  expect(page).to have_css(convert_item_name_to_class_name(avatar))
end

When(/^I visit the "(.*?)" game table$/) do |game_table|
#  path = get_game_table_path
  #visit (path[game_table])
  visit table_path(game_table)
end

Then(/^It should contain my "(.*?)"$/) do |item|
  widget = find('aside#user-statistics-widget')
  expect(widget).to have_css(convert_item_name_to_class_name(item))
end

Then(/^It should contain an Edit link$/) do
  widget = find('aside#user-statistics-widget')
  expect(widget).to have_css('.test-edit-link')
end
