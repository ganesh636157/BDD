Feature: Order
  Scenario Outline: User Should able to order
    Given  Launch Chrome1
    When Launch URL "<Key>"
    Then Close the Chrome
    Examples:
    | Key |
    | ber |