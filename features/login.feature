Feature: Login
  Check user can login with valid username and password

  Scenario: Valid login
    Given I open login page
    When I log in

  Scenario Outline: Invalid login
    Given I open login page
    When I type "<username>" in username field
    When I type "<password>" in password field
    When I click element with text "Log in"
    Then I see element with text "<text>"

    Examples:
      | username | password | text                                                   |
      | qwer     | qwer     | Sorry, your password was incorrect                     |
      | 1234     | 1234     | The username you entered doesn't belong to an account. |
      | !@#$     | !@#$     | The username you entered doesn't belong to an account. |

  Scenario: Data table invalid login
    Given I open login page
    Then I see validation message for
      | username | password | text                                                |
      | qwer     | qwer     | Sorry, your password was incorrect                     |
      | 1234     | 1234     | The username you entered doesn't belong to an account. |
      | !@#$     | !@#$     | The username you entered doesn't belong to an account. |