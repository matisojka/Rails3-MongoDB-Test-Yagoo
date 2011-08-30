# models/comment.rb
class Comment

  # Class Configuration :::::::::::::::::::::::::::::::::::::::::::::
  include MongoMapper::Document

  # Attributes ::::::::::::::::::::::::::::::::::::::::::::::::::::::
  key :message, String
  key :message_html, String
  timestamps!

  attr_accessible :message, :message_html

  # Validations :::::::::::::::::::::::::::::::::::::::::::::::::::::
  validates_presence_of :message

  # Assocations :::::::::::::::::::::::::::::::::::::::::::::::::::::
  belongs_to :user

  # Callbacks :::::::::::::::::::::::::::::::::::::::::::::::::::::::
  #before_create :foo
  #after_create :bar

  # Getters / setters :::::::::::::::::::::::::::::::::::::::::::::::

  # Set user only if nil
  def user=(user)
    self.user.nil? ? self.user = user : raise("Cannot change the user")
  end

  def username
    self.user.username
  end

  # Methods :::::::::::::::::::::::::::::::::::::::::::::::::::::::::

  def self.all_messages
    Comment.all.map(&:message)
  end

  def self.contributors_quantities
    Comment.all.inject(Hash.new(0)) do |memo, comment|
      memo[comment.user.username] += 1 ; memo
    end
  end

  def self.comments_given(username)
    user = User.find_by_username(username)
    user.comments
  end

end
