Given(/^the feature "(.*?)" has a scenario called "(.*?)"$/) do |feature_name, scenario_name|
  @feature = Feature.find_by_name(feature_name)
  @scenario = @feature.scenarios.create(name: scenario_name)
  @scenario.save!
end

Given(/^I am viewing this scenario$/) do
    visit "/scenarios/#{@scenario.id}"
end