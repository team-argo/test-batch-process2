# Feature: Healthcare Support and FAQ Page Functionality

@HealthcareSupport
@FAQPage
Feature: Healthcare Support and FAQ Page Functionality
  As a user of the healthcare website
  I want to easily find information and connect with support
  So that I can understand services and get my questions answered

  Background:
    Given the user is on the "Healthcare Support and FAQ" page

@Navigation
@Smoke
Scenario Outline: User navigates through the website using global navigation
  Given the user is on the "Home" page
  When the user clicks on the "<link_name>" navigation link
  Then the user should be redirected to the "<expected_page>" page

  Examples:
    | link_name | expected_page |
    | Home      | Home          |
    | About     | About         |
    | Services  | Services      |
    | Contact   | Contact       |

@HeroSection
@UI
@Smoke
Scenario: User understands the purpose of the page from the Hero Section
  When the page finishes loading
  Then a prominent hero heading should be displayed
  And descriptive text related to healthcare support should be visible
  And a relevant illustration should be present
  And a "Let's connect" call-to-action button should be displayed

@HeroSection
@CTA
@Navigation
Scenario: User initiates contact from the Hero Section
  Given the user is viewing the hero section
  When the user clicks the "Let's connect" call-to-action button
  Then the page should scroll to the "Contact Form" section

@FAQ
@UI
Scenario: User identifies the FAQ section header
  When the user scrolls down the page
  And the "FAQ" section header becomes visible
  Then the user should see "FAQ" as a prominent heading

@FAQ
@Accordion
@Functionality
Scenario Outline: User finds answers to common questions in the FAQ section
  Given the user has scrolled to the FAQ section
  When the user clicks on the FAQ question "<question_text>"
  Then the answer "<answer_text>" should be revealed
  And clicking the question again should collapse the answer

  Examples:
    | question_text                       | answer_text                                     |
    | What types of healthcare services do you offer? | We offer a wide range of services including general consultations, specialized treatments, and preventative care. |
    | How can I book an appointment?      | You can book an appointment online through our portal, by calling our office, or by visiting us in person. |
    | Do you accept my insurance?         | We accept most major insurance plans. Please contact our billing department for specific details. |

@ContactForm
@UI
Scenario: User identifies the Contact Form section header
  When the user scrolls down the page
  And the "Let's Connect!" section header becomes visible
  Then the user should see "Let's Connect!" as a prominent heading
  And a clear call to action to fill out the form should be present

@ContactForm
@Functionality
@Smoke
Scenario: User successfully submits contact information
  Given the user has scrolled to the "Let's Connect!" section
  When the user fills in the "First Name" field with "Jane"
  And fills in the "Last Name" field with "Doe"
  And selects "Female" from the "Gender" dropdown
  And enters "Inquiry about services" into the "Reason" text area
  And clicks the "Submit" button
  Then a success message "Your message has been sent successfully!" should be displayed
  And the form fields should be cleared

@ContactForm
@Functionality
Scenario: User attempts to submit contact information with missing required fields
  Given the user has scrolled to the "Let's Connect!" section
  When the user fills in the "First Name" field with "John"
  And leaves the "Last Name" field empty
  And selects "Male" from the "Gender" dropdown
  And enters "General question" into the "Reason" text area
  And clicks the "Submit" button
  Then an error message "Last Name is required." should be displayed for the "Last Name" field
  And the form should not be submitted

@Footer
@UI
@Navigation
Scenario: User accesses legal and contact information from the Footer
  When the user scrolls to the bottom of the page
  And the footer is fully visible
  Then contact details (e.g., phone number, email, address) should be displayed
  And the company mission statement should be visible
  And legal links (e.g., "Privacy Policy", "Terms of Service", "Sitemap") should be present
  And clicking on the "Privacy Policy" link should navigate to the Privacy Policy page