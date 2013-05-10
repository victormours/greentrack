Feature: Step Management

As a user
I want to add steps to my cucumber scenarios
In order to provide a detailed description of my scenario

Background:
  Given there exists a project called "Cool Project"
  And the project "Cool Project" has a feature called "Awesome Feature"
  And the feature "Awesome Feature" has a scenario called "Happy Scenario"
  And I am editing this scenario

Scenario: Adding a step
  When I select "Add Step"
  Then a new form for the step appears
  When I select the prefix "Given"
  And I write "my projet supports Cucumber steps"
  And I select "Save"
  Then I am taken to the scenario viewing page
  And the step "Given my project supports Cucumber steps" appears
