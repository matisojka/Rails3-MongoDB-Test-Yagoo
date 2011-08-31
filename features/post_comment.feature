Feature: Post Comment

  So that I can leave comments
  As a user
  I want to pots a comment

  Scenario: Post comment with body content
    Given I am a user
    When I post a comment with the content "This is a new comment"
    Then the user should have a comment
    And the comment body should be "This is a new comment"

  Scenario: Post comment with empty body
    Given I am a user
    When I post a comment with blank content
    Then the user shouldn't have any comments