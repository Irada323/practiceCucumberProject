#Author: your.email@your.domain.com
#Keywords Summary :
#Feature: List of scenarios.
#Scenario: Business rule through list of steps with arguments.
#Given: Some precondition step
#When: Some key actions
#Then: To observe outcomes or validation
#And,But: To enumerate more Given,When,Then steps
#Scenario Outline: List of steps for data-driven as an Examples and <placeholder>
#Examples: Container for s table
#Background: List of steps run before each of the scenarios
#""" (Doc Strings)
#| (Data Tables)
#@ (Tags/Labels):To group Scenarios
#<> (placeholder)
#""
## (Comments)
#Sample Feature Definition Template
@login @regression
Feature: Creater app user managment
  Users with permission should be able to interact with the application on 
  successful login

  @validlogin @loginTests @smokeTest
  Scenario: Successful login
    Given As a user, I am on the login page
    When I enter valid user name and valid password
    And when I click on login button
    Then I should be on the user profile page

  @invalidlogin @loginTests
  Scenario: Invalid user login
    Given as an user, I am on the login page
    When I enter invalid username and valid password
    And I click on log in button
    Then I should see a error message
    And I should not be logged in
