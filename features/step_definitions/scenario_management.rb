Given(/^the project "(.*?)" has a feature called "(.*?)"$/) do |project_name, feature_name|
    @project = Project.find_by_name(project_name)
    @feature = Feature.new(name: feature_name)
    @feature.project_id = @project.id
    @feature.save!
end

Given(/^I am viewing this feature$/) do
    visit "/features/#{@feature.id}"
end

Then(/^I can set the scenario's name$/) do
  page.assert_selector("form input [id=scenario_name] [value~=New] [value~=Scenario]")
end

Then(/^I am taken to the scenario editing page$/) do
    #check there is a form corresponding to the scenario edit action
    page.assert_selector("form [method=post] input [id=scenario_name]")
end
