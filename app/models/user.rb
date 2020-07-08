class User < ApplicationRecord
  def show_tests_by_level(level)
    UserTest.joins("JOIN tests ON test.id = useer.test_id")
    .where("user_id = ? AND tets.level = ?", user_id, level)
  end
end
