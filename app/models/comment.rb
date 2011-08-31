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

  # Methods :::::::::::::::::::::::::::::::::::::::::::::::::::::::::

end
