Feature: As a user or administrator
  In order to store videos in the catalogue
  I should login to the dashboard to add a new video to the system


  Background:

    Given the following user account exist
      | email                | first_name  | last_name | password | password_confirmation | role           |
      | o.dania@laffhub.com  | Osegbemoh   | Dania     | 12345678 | 12345678              | administrator  |


    And the following job families exist
      | family_name                  |
      | Busienss Development         |
      | Retail Technology            |
      | Finance                      |
      | Personnel                    |
      | Logistics                    |

    And the following business units exist
      | unit_name                |
      | Retail Operations        |
      | Infrastructure           |
      | Development              |


    And the following divisions exist
      | divison_name           |
      | Projects               |
      | Operations             |


    And the following organizational units exist
      | unit_name                   |
      | Oniru                       |
      | Upcountry                   |


    And the following primary clusters exist
      | cluster_name                      |
      | Revenue Assurance                 |
      | Customer On boarding              |


    And the following secondary clusters exist
      | cluster_name                      |
      | Business Management               |
      | Business Development              |


  Scenario:
    Given I visit the "sign_in" landing page
    And I fill in field "user_email" with "o.dania@icloud.com"
    And I fill in field "user_password" with "12345678"
    And I click on "Log In"
    And I click on "Job"
    And I click on "Create Job"
    And I fill in field 'Unit Name' with 'Retail Technology'
    And I click on "Submit"
    Then I should see "New Business Unit Successfully Added"


