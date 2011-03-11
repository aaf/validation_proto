Feature:  A user can add orange data
  In order to save orange data
  I want to enter data

@selenium
Scenario:  Add valid orange data
  Given I am on the new orange form
  When I fill in "Blueberry" with "ABC"
  And I fill in "Cherry" with "100"
  And I fill in "Latitude" with "-89"
  And I fill in "Longitude" with "179"
  And I press "Create Orange"
  Then I should see "Orange was successfully created."
 
@selenium
@javascript 
Scenario:  Add invalid orange data
  Given I am on the new orange form
  And I press "Create Orange"
  Then I should see "My custom message"
  Then I should see "is not a number"
  Then I should see "is required"
  Then show me the page