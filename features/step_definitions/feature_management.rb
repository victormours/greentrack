Given(/^I am viewing the project "(.*?)"$/) do |project_name|
  visit "/"
  click_link_or_button project_name
end

Then(/^I am taken to the feature creation page$/) do
  #a css selector trick to make sure the default name is "New Feature"
  page.assert_selector("form input [id=feature_name] [value~=New] [value~=Feature]")
  #making sure there is a form for a new feature
  assert page.has_css?("form [id=new_feature]")
end

When(/^I enter the feature name "(.*?)"$/) do |arg1|
  pending # express the regexp above with the code you wish you had
end

Then(/^I am taken to the feature view page for "(.*?)"$/) do |arg1|
  pending # express the regexp above with the code you wish you had
end

Then(/^I see there are no scenarios for this feature yet$/) do
  pending # express the regexp above with the code you wish you had
end
