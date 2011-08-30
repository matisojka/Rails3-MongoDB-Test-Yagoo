Feature: Post Comment

  So that I can leave comments
  As a user
  I want to pots a comment

  Scenario: Post comment with body content
    Given a comment
    When I set the body content to "This is a new comment"
    And I post the comment
    Then the comment should be saved
    And the comment body should be "This is a new comment"

  Scenario: Post comment with empty body
    Given a comment
    When I set the body content to ""
    And I post the comment
    Then the comment shouldn't be posted