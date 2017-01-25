Feature: standard sign up

As a new customer, I would like to create an account in order to utilize the Farmdrop site.



Background:
Given I navigate to the homepage

When I click the Sign Up icon

Then I am redirected to the /signup page


@happypath
Scenario: Sign up with valid credentials 

And I enter <username> into email address 

And I enter <password> into password 

And I enter <postcode> into postcode 

When I click on the sign up button 

Then the dashboard is displayed 

And my account is created 

 

Examples: 

| Email | Password | Postcode | 

| test1@farmdrop.com  |  test1 | N1 7JR | 

| test2@farmdrop.com | test2 | N1 7JR | 

| test3@farmdrop.com | test3 | N1 7JR | 

| test4@farmdrop.com | test4 | N1 7JR | 




@sad_path
Scenario: Attempt sign up with invalid credentials 

And I enter <username> into email address 

And I enter <password> into password 

And I enter <postcode> into postcode 

When I click on the sign up button 

Then an error message is displayed 

And my account is not created 

 

Examples: 

| Email | Password | Postcode | 

| test1  |  test1 | N1 7JR | 

| test2@farmdrop.com | tes | N1 7JR | 

| test3@farmdrop.com | test3 | N1   | 






@bad_path
Scenario: Confirm existing user credentials may not be reused

When I enter test1@farmdrop.com into email address

And I enter test123 into password

And I enter N1 7JR into postcode

Then an error message is displayed

And I am not redirected
