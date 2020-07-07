class Test < ApplicationRecord
  def self.tests_by_category
    category = gets.chomp
    testlist_by_category = Test.where(category: :category, name: :desc).to_arr
  end
end
