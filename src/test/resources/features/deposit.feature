Feature: Deposit
  As a customer
  I want to deposit cash

Background:
  Given a customer with id 1 and pin 111 with balance 200 exists
  When I login to ATM with id 1 and pin 111

Scenario: Deposit positive amount
  When I deposit 100
  Then my account balance is 300

Scenario: Deposit negative amount
  When I deposit -100
  Then my account balance is 200