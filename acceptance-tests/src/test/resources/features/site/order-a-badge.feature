@OrderABadge
Feature: Dft BlueBadge LA Order a Badge

  As a Blue Badge team member
  I want to add a badge record without placing an order
  So that I can add missing records without issuing a badge

  Scenario: Verify Submit person details with empty fields
    Given I navigate to the "home" page
    When I can click on the "Sign in" link
    When I type username "abc@dft.gov.uk" and password "password"
    And I can click Sign in button
    And I can click on the "Order a badge" link on left navigation
    Then I should see the page titled "Personal Details - GOV.UK Manage Blue Badges"
    #When I select option "person"
    #And I can click "continue" button
    #Then I should see the page titled "Personal Details - GOV.UK Manage Blue Badges"
    #Then I click on element "continue" button
    #Then I should see the page titled "Personal Details - GOV.UK Manage Blue Badges"

  Scenario: Verify Submit person details with all fields set and Processing with empty fields set
    Given I navigate to the "home" page
    When I can click on the "Sign in" link
    When I type username "abc@dft.gov.uk" and password "password"
    And I can click Sign in button
    And I can click on the "Order a badge" link on left navigation
    #Then I should see the page titled "Personal Details - GOV.UK Manage Blue Badges"
    #When I select option "person"
    #And I can click "continue" button
    Then I should see the page titled "Personal Details - GOV.UK Manage Blue Badges"
    When I enter all the mandatory valid personal details to order a badge
    And I can click "continue" button
    Then I should see the page titled "Processing - GOV.UK Manage Blue Badges"
    And I can click "continue" button
    Then I should see the page titled "Processing - GOV.UK Manage Blue Badges"

  Scenario: Verify Submit person details with all fields set and Processing with all fields set
    Given I navigate to the "home" page
    When I can click on the "Sign in" link
    When I type username "abc@dft.gov.uk" and password "password"
    And I can click Sign in button
    And I can click on the "Order a badge" link on left navigation
    #Then I should see the page titled "Personal Details - GOV.UK Manage Blue Badges"
    #When I select option "person"
    #And I can click "continue" button
    Then I should see the page titled "Personal Details - GOV.UK Manage Blue Badges"
    When I enter all the mandatory valid personal details to order a badge
    And I can click "continue" button
    Then I should see the page titled "Processing - GOV.UK Manage Blue Badges"
    When I enter all the mandatory valid processing details to order a badge
    And I can click "continue" button
    Then I should see the page titled "GOV.UK Manage Blue Badges"

  Scenario: Verify person details are prepopulated and submittable once they are submitted and we go back to details from processing page
    Given I navigate to the "home" page
    When I can click on the "Sign in" link
    When I type username "abc@dft.gov.uk" and password "password"
    And I can click Sign in button
    And I can click on the "Order a badge" link on left navigation
    #Then I should see the page titled "Personal Details - GOV.UK Manage Blue Badges"
    #When I select option "person"
    #And I can click "continue" button
    Then I should see the page titled "Personal Details - GOV.UK Manage Blue Badges"
    When I enter all the mandatory valid personal details to order a badge
    And I can click "continue" button
    Then I should see the page titled "Processing - GOV.UK Manage Blue Badges"
    When I navigate to the "order-a-badge/details" page
    And I can click "continue" button
    Then I should see the page titled "Processing - GOV.UK Manage Blue Badges"