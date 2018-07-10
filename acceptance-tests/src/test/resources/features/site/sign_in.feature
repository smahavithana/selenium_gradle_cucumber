@SignIn
Feature: Sign In Page

  As an admin user
  I want to sign in to webapp
  So that I can view admin dashbaord

  Scenario: Verify valid Sign in
    Given I navigate to the "home" page
    When I can click on the "Sign in" link
    Then I should see the page titled "Sign in - Test"
    And I type username "abc@dft.gov.uk" and password "password"
    And I can click Sign in button
    Then I should see the page titled "Test Page"
    And I should see username as "Sampath"
    And I should see signout link

