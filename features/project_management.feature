Feature: Project Management

As a user
I want to create, read, update and delete projects
In order to keep things organized

Scenario: Creating a project
    Given I visit the home page.
    When I enter the name "Cool Project" for the project
    And I select "Create"
    Then I am taken to the project viewing page for "Cool Project"

Scenario: Viewing a project
    Given there exists a project called "Cool Project"
    When I visit the home page.
    And I select "Cool Project"
    Then I am taken to the project viewing page for "Cool Project"

Scenario: Modifying a project name
    Given I am viewing a project
    When I select the project's settings
    And I change the name to "Project B"
    Then the project's name on the display page is changed to "Project B"

Scenario: Deleting a project
    Given I am viewing a project
    When I select the project's settings
    And I choose to delete the project
    Then the project doesn't appear in the list of projects