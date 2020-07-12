class TestsUser < ApplicationRecord
  belongs_to :user
  belongs_to :test

  scope :by_user, -> (user_id) { where(user_id: user_id) }
end

# => tests_users => TestsUser