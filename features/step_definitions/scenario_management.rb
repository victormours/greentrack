Given(/^the project "(.*?)" has a feature called "(.*?)"$/) do |project_name, feature_name|
    @project = Project.find_by_name(project_name)
    @feature = Feature.new(name: feature_name)
    @feature.project_id = @project.id
    @feature.save!
end

Given(/^I am viewing this feature$/) do
    visit "/features/#{@feature.id}"
end
