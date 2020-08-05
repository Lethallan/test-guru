require 'digest/sha1'
require 'bcrypt'

class User < ApplicationRecord

  include BCrypt

  has_many :test_passages
  has_many :tests, through: :test_passages
  has_many :author_tests, class_name: 'Test', foreign_key: :user_id

  has_secure_password

  # validates :name, presence: true
  validates :email, presence: true, uniqueness: true
  # validates :password, presence: true, if: Proc.new { |u| u.password_digest.blank? }
  # validates :password, confirmation: true

  def test_passage(test)
    test_passages.order(id: :desc).find_by(test_id: test.id)
  end
end
