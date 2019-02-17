Feature: String Operation

  Scenario: Calculate the number of words in a sentence
    Given I enter "I am a Software Engineer"
    When calculate number of words
    Then verify the number of count as 5