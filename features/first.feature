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
<<<<<<< HEAD

    # behave -f allure_behave.formatter:AllureFormatter -o reports/ features
     #     #allure serve reports/
=======
 # behave -f allure_behave.formatter:AllureFormatter -o reports/ features
     #allure serve reports/
>>>>>>> eb4e08636d48cc9c007551b7cefafac48e628e4e
