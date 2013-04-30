Feature: Scenario Management

As a user
I want to give a set a scenarios for my feature
In order to describe all possible use cases

Background:
    Given there exists a project called "Cool Project"
    And the project "Cool Project" has a feature called "Awesome Feature"
    And I am viewing this feature

Scenario: Adding a scenario
    When I select "New Scenario"
    Then I can set the scenario's name
    When I select "Create"
    Then I am taken to the scenario editing page