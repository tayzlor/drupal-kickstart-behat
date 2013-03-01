@user @login
Feature: Login Commerce Kickstart
  In order to start using additional features of the site
  As an anonymous user
  I should be able to Login


  Scenario: Login and as admin and view user profile
    #When I go to "/user/login"
    #And I fill in "Username" with "admin"
    #And I fill in "Password" with "admin"
    #And I press "Log in"
    Given I am logged in as "admin user"
    And I go to "/user"
    Then I should see "HELLO, ADMIN"
    And I should see the following <links>
      | links                 |
      | My account            |
      | Address Book          |
      | Update email/password |
      | Connections           |
      | Order history         |

