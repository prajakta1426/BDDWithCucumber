#Feature: Shopping Cart Functionality
#  As a registered user
#  I want to manage items in my shopping cart
#  So that I can purchase the products I want
#  Background:
#    Given User must be logged in
#  @smoke
#  @regression
#  Scenario: Add product
#    Given the user is on product page
#    When the user adds a product to cart
#    Then the product is added to cart
#  @regression
#  Scenario: Remove product
#    Given the user is on Cart page
#    When the user removes a product from the cart
#    Then the product is removed from the cart
#  @regression
#  Scenario: Add multiple products
#    Given the user is on product page
#    When the user add products to cart with these details:
#      | Blue Top         |
#      | Men Tshirt       |
#      | Sleeveless Dress |
#    Then the products are added to cart