@Everything @Feature
Feature: Stock Management To Check Parameter

  Background:
    Given I count my current stock

    @Community
    Scenario: Next batch should fit in my warehouse
      When I count next month's estimated production
      And I check my warehouse capacity
      Then it should fit

    @Premium
    Scenario: Warehouse charges should not exceed a third of the products value
      When I check the current product's value is 5
      And I check the warehouse's reference
      And I check the warehouse's maintenance cost
      And I check the warehouse's renting cost
      Then the charges should not exceed a third of the products value