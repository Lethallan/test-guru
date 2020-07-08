class Test < ApplicationRecord
  # def self.tests_by_category(category)
  #   Test.where(category: :category,)
  #       .order(topic: :desc)
  # end

  def self.tests_by_category(category)
    Test.joins("JOIN categories ON categories.id = tests.category_id")
        .where("categories.topic = ?", category)
        .order("tests.title DESC")
  end
end
