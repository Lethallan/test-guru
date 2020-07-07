class User < ApplicationRecord
  def show_visited_tests_by_level
    level = gets.chomp.to_i
    visited_tests = Tests.where(level: :level).all
  end
end
