Feature: Login
  Scenario: verify the logo
    Given  launch chrome
    When open the website
    Then verify the title
    And search with keyword "ber"
    Then close the browser

  Scenario Outline: verify the logo
    Given  launch chrome
    When open the website
    Then verify the title
    And search with keyword "<Key>"
    Then close the browser

    Examples:
    | Key |
    | ber |
    | Mer |
    | Tom |
 # behave -f allure_behave.formatter:AllureFormatter -o reports/ features
     #allure serve reports/
