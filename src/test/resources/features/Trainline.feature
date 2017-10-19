Feature: The Trainline test feature
  As a Trainline.com user
  I want to be able to search for various train journey's
  So that I can book train tickets successfully


#  Tests can be ran in the following ways:
#  - from a command line, navigate to the directory where the project resides. Enter the command 'mvn clean test'
#  - or, right click a scenario and choose either 'run <scenario name>' or 'debug <scenario_name>
#  If you're not sure how to do something, feel free to use google as much as you need to try and figure out the solution


# ==============================================================================================
#  Task 1
#  complete the following Scenario. The first two steps have been implemented, but the remaining steps need to be completed

  Scenario: task 1 scenario
    Given I'm on the trainline.com homepage
    And I enter 'From' station 'East Croydon'
    And I enter 'To' station 'Brighton'
    And I enter 'Out' date '19-Oct-17'
    And I select leaving hour '17'
    And I select leaving minute '15'
    When I click the 'Get times & tickets' button
    Then the search results page is displayed
    And the 'From' station 'East Croydon' and 'To' station 'Brighton' are displayed at the top of the page




# ==============================================================================================
#  Task 2
#  Copy and paste the scenario from task 1 below. Rename it to 'task 2 scenario'
#  If all the 'And' steps are not yet parameterised (similar to the step "I enter 'From' station 'East Croydon' is in task 1") then implement new steps for them where the input values are now paramaterised.
#  Amend the Scenario to use Scenario Outline and an Examples table
#  In the Examples table, create a column for any parameterised value in the 'And' steps. E.g the step "I enter 'From' station 'East Croydon'" could have a column heading in the Examples table called "from_station"
#  Create two rows in the Examples table. Each row should provide different data. E.g taking the example above, 'from_station' could take the value "East Croydon" on the first row and "London Victoria" on the second row





# ==============================================================================================
#  Task 3
#  Implement any steps below that haven't been implemented yet
#  Hint - for the 'When' step, the method that implements the step will need to take a cucumber data table as the argument.
#  for the 'When' step implementation, get Selenium to enter the details in the step below into the relevant fields on the trainline home page.

  Scenario: task 3 scenario
    Given I'm on the trainline.com homepage
    When I enter the following search criteria
    | FROM          | TO       | OUT_DATE  | OUT_HOUR | OUT_MINUTE |
    | East Croydon  | Brighton | 25-Oct-17 | 17       | 30         |
    When I click the 'Get times & tickets' button
    Then the search results page is displayed
    And the 'From' station 'East Croydon' and 'To' station 'Brighton' are displayed at the top of the page

