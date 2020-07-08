class User < ApplicationRecord
  def user_tests_by_level(level)
    Test.joins('LEFT JOIN usertests ON tests.id = usertests.test_id')
        .where('tests.level = :level AND usertests.user_id = :user_id', level: level, user_id: id)
        .joins('LEFT JOIN statuses ON usertests.status_id = statuses.id')
        .where('usertests.status_id >= :status', status: 2)
  end
end
