Feature: Feature Management

As a user
I want to manage a set of feature that describe the requirements of my current project
In order to know what the developers should be working on

Background:
    Given there exists a project called "Cool Project"
    And I am viewing the project "Cool Project"

Scenario: Creating an empty feature
    When I select "Create"
    Then I am taken to the feature editing page
    When I enter the feature name "Awesome Feature"
    And I select "Save"
    Then I am taken to the feature view page for "Awesome Feature"
    And I see there are no scenarios for this feature yet