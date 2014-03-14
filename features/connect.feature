Feature: feature x

@all @connect
Scenario: connect
Given  I navigate to connect
And  I log in with id of "ni10196" and password of "ni10196"
Then  "What's New" should be present
