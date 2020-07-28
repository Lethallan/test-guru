class User < ApplicationRecord
    # def user_tests_by_level(level)
  #   Test.joins('LEFT JOIN usertests ON tests.id = usertests.test_id')
  #       .where('tests.level = :level AND usertests.user_id = :user_id', level: level, user_id: id)
  #       .joins('LEFT JOIN statuses ON usertests.status_id = statuses.id')
  #       .where('usertests.status_id >= :status', status: 2)
  # end

  has_many :test_passages
  has_many :tests, through: :test_passages
  has_many :author_tests, class_name: 'Test', foreign_key: :user_id

  validates :name, :email, presence: true, uniqueness: true

  def test_passage(test)
    test_passages.order(id: :desc).find_by(test_id: test.id)
  end
end
