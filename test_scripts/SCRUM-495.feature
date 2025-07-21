# Gherkin Test Script for Jira Story: About Us Page
# Issue Type: Story
# Summary: About Us Page

Feature: About Us Page Functionality
  As a website user
  I want to learn about the company and its mission
  So that I can understand its values, key information, and contact details.

  @about_us @navigation @global_navigation
  Scenario: User navigates to the About Us page via global navigation
    Given the user is on any page of the website
    When the user clicks on the "About Us" navigation link
    Then the user is directed to the "About Us" page
    And the URL should contain "/about-us"
    And the page title should be "About Us" or similar

  @about_us @content @mission_values
  Scenario: User views the main About Us section content
    Given the user is on the "About Us" page
    When the user views the main content section
    Then an illustrative graphic related to the company is displayed
    And a detailed description of the company's culture and journey is visible
    And the description clearly articulates the company's mission and values

  @about_us @key_people @directory
  Scenario: User views the Key People directory
    Given the user is on the "About Us" page
    When the user scrolls to the "Key People" section
    Then a table listing key staff information is displayed
    And the table includes the following columns:
      | Header      |
      | Name        |
      | Country     |
      | Time Zone   |
      | Role        |
    And the table contains at least one staff entry

  @about_us @statistics @metrics
  Scenario: User views key company statistics and milestones
    Given the user is on the "About Us" page
    When the user scrolls to the "Company Statistics" section
    Then four distinct cards are displayed
    And each card shows a company milestone or performance indicator
    And the indicators include "Founding Year", "Patients Served", "Locations", and "Patient Satisfaction"
    And each card displays a numerical value or relevant text for its indicator

  @about_us @footer @legal @contact
  Scenario: User accesses legal and contact information in the global footer
    Given the user is on any page of the website
    When the user scrolls to the bottom of the page
    Then the company's contact details are visible
    And a mission statement is displayed in the footer
    And legal links are present, including "Privacy Policy" and "Terms of Use"
    And the "Privacy Policy" link is clickable and leads to the Privacy Policy page
    And the "Terms of Use" link is clickable and leads to the Terms of Use page