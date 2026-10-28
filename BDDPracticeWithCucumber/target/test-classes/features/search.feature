#Feature: Search
#  @smoke
#  @regression
#  Scenario Outline: Search Products
#      Given the user in on Products Page
#      When the user enters the "<product>" in search bar
#      Then the List of Products is displayed
#
#    Examples:
#      | product |
#      | shirt   |
#      | jeans   |
#      | tshirt  |
#
#  @regression
#  Scenario: User searches for a product that does not exist
#    Given the user is on the Products page
#    When the user enters "zzznonexistent" in the search bar
#    Then no products are displayed
#    And the "No products found" message is shown