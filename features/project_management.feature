Feature: Project Management

As a user
I want to create, read, update and delete projects
In order to keep things organized

Background:
    Given I visit the home page.

Scenario: Creating a project
    When I enter the name "Cool Project" for the project
    And I select "Create"
    Then I am taken to the project viewing page for "Cool Project"

Scenario: Viewing a project
    Given there exists a project called "Project A"
    When I select Project A
    Then I see a page displaying the project's information

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