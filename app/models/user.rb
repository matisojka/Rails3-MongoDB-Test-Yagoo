# models/user.rb
class User

  # Class Configuration :::::::::::::::::::::::::::::::::::::::::::::
  include MongoMapper::Document

  # Attributes ::::::::::::::::::::::::::::::::::::::::::::::::::::::
  key :email,  String
  key :username,  String, :unique => true
  key :comment_count, Integer

  timestamps!

  # Validations :::::::::::::::::::::::::::::::::::::::::::::::::::::
  RegEmailName   = '[\w\.%\+\-]+'
  RegDomainHead  = '(?:[A-Z0-9\-]+\.)+'
  RegDomainTLD   = '(?:[A-Z]{2}|com|org|net|gov|mil|biz|info|mobi|name|aero|jobs|museum)'
  RegEmailOk     = /\A#{RegEmailName}@#{RegDomainHead}#{RegDomainTLD}\z/i

  validates_length_of :email, :within => 6..100, :allow_blank => true
  validates_format_of :email, :with => RegEmailOk, :allow_blank => true

  # Assocations :::::::::::::::::::::::::::::::::::::::::::::::::::::
  many :comments

  # Methods :::::::::::::::::::::::::::::::::::::::::::::::::::::::::

  def post_comment(body)
    self.comments.create!(:message => body) unless body.blank?
  end

end
