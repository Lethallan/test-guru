# require 'digest/sha1'

class User < ApplicationRecord
  require 'bcrypt'

  VALID_EMAIL_REGEXP = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

  devise :database_authenticatable,
        :registerable,
        :recoverable,
        :rememberable,
        :validatable,
        :confirmable

  include BCrypt

  has_many :test_passages
  has_many :tests, through: :test_passages
  has_many :author_tests, class_name: 'Test', foreign_key: :user_id
  has_many :gists
  has_many :userbadges
  has_many :badges, through: :userbadges

  validates :email, presence: true, uniqueness: true, format: { with: VALID_EMAIL_REGEXP }

  def test_passage(test)
    test_passages.order(id: :desc).find_by(test_id: test.id)
  end

  def userbadge(badge)
    userbadges.order(id: :desc).find_by(badge_id: badge.id)
  end
end
