Given /^I am a user$/ do
  @user = User.new(:username => 'Mr. Y')
end

When /^I post a comment with the content "([^"]*)"$/ do |body|
  @user.post_comment(body)
end

Then /^the user should have a comment$/ do
  @user.comments.size.should be(1)
end

Then /^the comment body should be "([^"]*)"$/ do |body|
  @user.comments.first.message.should == body
end

When /^I post a comment with blank content$/ do
  @user.post_comment("")
end

Then /^the user shouldn't have any comment$/ do
  @user.comments.size.should be(0)
end