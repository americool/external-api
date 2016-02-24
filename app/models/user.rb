class User < ActiveRecord::Base
  before_save {self.email = email.downcase}
  has_many :lists
  EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

  validates :name, length: {minimum: 1, maximum: 40 }, presence: true
  validates :password, length: {minimum: 6}, allow_blank: false

  validates :email,
            presence: true,
            uniqueness: {case_sensitive: false},
            length: {minimum: 3, maximum: 100},
            format: {with: EMAIL_REGEX}

end
