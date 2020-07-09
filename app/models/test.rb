class Test < ApplicationRecord
  # def self.tests_by_category(category)
  #   Test.where(category: :category,)
  #       .order(topic: :desc)
  # end

    # def self.tests_by_category(category)
  #   Test.joins("JOIN categories ON categories.id = tests.category_id")
  #       .where("categories.topic = ?", category)
  #       .order("tests.title DESC")
  # end

  belongs_to :category
  belongs_to :author, class_name: 'User', foreign_key: 'user_id'
  has_many :questions
  # has_and_belongs_to_many :users
  has_many :tests_users
  has_many :users, through: :tests_users
end
