@SignIn
Feature: Dft BlueBadge LA Sign In Page

  As an admin user
  I want to sign in to LA webapp
  So that I can view admin dashbaord

  Scenario: Verify valid Sign in
    Given I navigate to the "home" page
    When I can click on the "Sign in" link
    Then I should see the page titled "Sign in - GOV.UK Manage Blue Badges"
    And I type username "abc@dft.gov.uk" and password "password"
    And I can click Sign in button
    Then I should see the page titled "GOV.UK Manage Blue Badges"
    And I should see LA name as "Manchester City Council"
    And I should see username as "Sampath"
    And I should see signout link

  Scenario: Verify Sign in with an invalid email address
    Given I navigate to the "home" page
    When I can click on the "Sign in" link
    And I type username "example" and password "test123"
    And I can click Sign in button
    Then I should see the validation message for "invalid email address or password" as "Invalid email address or password"

  Scenario: Verify Sign in with an invalid password
    Given I navigate to the "home" page
    When I can click on the "Sign in" link
    And I type username "example@gmail.com" and password ""
    And I can click Sign in button
    Then I should see the validation message for "invalid email address or password" as "Invalid email address or password"

  Scenario: Verify Sign out
    Given I navigate to the "home" page
    When I can click on the "Sign in" link
    When I type username "abc@dft.gov.uk" and password "password"
    And I can click Sign in button
    And I can click Sign out button
    Then I should see the title "Sign in"
    Then I can see labelled element "info.form.global.signedOut.title" with content "You''ve been signed out"

