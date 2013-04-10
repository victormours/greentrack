Given(/^I visit the home page\.$/) do
  visit "/"
end

When(/^I select "(.*?)"$/) do |label|
  click_link_or_button label
end

When(/^I enter the name "(.*?)" for the project$/) do |name|
  fill_in "project[name]",    with: name
end

Then(/^I am taken to the project viewing page for "(.*?)"$/) do |project_name|
  page.assert_selector('h1', text: project_name)
end

Given(/^there exists a project called "(.*?)"$/) do |project_name|
  Project.new(name: project_name).save!
end

Then(/^I see a page displaying the project's information$/) do
  pending # express the regexp above with the code you wish you had
end

Given(/^I am viewing a project$/) do
  pending # express the regexp above with the code you wish you had
end

When(/^I select the project's settings$/) do
  pending # express the regexp above with the code you wish you had
end

When(/^I change the name to "(.*?)"$/) do |arg1|
  pending # express the regexp above with the code you wish you had
end

Then(/^the project's name on the display page is changed to "(.*?)"$/) do |arg1|
  pending # express the regexp above with the code you wish you had
end

When(/^I choose to delete the project$/) do
  pending # express the regexp above with the code you wish you had
end

Then(/^the project doesn't appear in the list of projects$/) do
  pending # express the regexp above with the code you wish you had
end
