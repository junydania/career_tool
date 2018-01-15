Feature: As an administrator
  In order to let users select available jobs
  I should create new jobs in the system


  Background:

    Given the following user account exist
      | email                | first_name  | last_name | password | password_confirmation | role           |
      | o.dania@laffhub.com  | Osegbemoh   | Dania     | 12345678 | 12345678              | manager        |


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
      | division_name           |
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
    And I fill in field "user_email" with "o.dania@laffhub.com"
    And I fill in field "user_password" with "12345678"
    And I click on "Log In"
    Then show page
    And I click on "Job"
    And I click on "Create Job"
    And I fill in field 'Name' with 'Manager, IT Infrastructure'
    And I select "12" from "SBG"
    And I select "Retail Technology" from "Job Division"
    And I select "Infrastructure" from "Business Units"
    And I select "Projects" from "Dvision"
    And I select "Upcountry" from "Organizational Units"
    And I select "Revenue Assurance" from "Primary Clusters"
    And I select "Business Development" from "Secondary Clusters"
    And I fill in field 'Competency' with 'OOP and Ruby on Rails skills'
    And I fill in field 'Competency' with 'AWS & Google Compute skills required'
    And I fill in field 'Competency' with 'Experience workign with Vagrant & Docker'
    And I click on "Submit"
    Then I should see "New Job Successfully Added"

