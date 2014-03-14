Feature: feature x

@all
Scenario Outline: Where is the Master?
Given  I navigate to Google
When  I enter <karateStyle> into the search field
Then  the text <masterSurname> should be present

@wado @daily
Examples:
| karateStyle | masterSurname |
| Wado        | Ohtsuka       |

@shotokan @monthly
Examples:
| karateStyle | masterSurname |
| Shotokan    | Funakoshi     |

