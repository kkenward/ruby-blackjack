When(/^I click PLAY!$/) do
  find('button.test-play-btn').click
end

Then(/^I will see the playing area$/) do
  expect(page).to have_css('.test-playing-area')
end

Then(/^I will see the control bar$/) do
  expect(page).to have_css('.test-control-bar')
end

When(/^I view the contents of the playing area$/) do
end

Then(/^The playing area should contain a?m?y? "(.*?)"$/) do |playing_item|
  area = find('section.test-playing-area')
  expect(area).to have_css(convert_item_name_to_class_name(playing_item))
end

When(/^I view the contents of the control bar$/) do
end

Then(/^The control bar should contain a?m?y? "(.*?)"$/) do |action_item|
  bar = find('section.test-control-bar')
  expect(bar).to have_css(convert_item_name_to_class_name(action_item))
end

Then(/^The control bar should contain a "(.*?)" button$/) do |action_btn|
  bar = find('section.test-control-bar')
  expect(bar).to have_css(convert_item_name_to_class_name(action_btn) + "-btn")
end
