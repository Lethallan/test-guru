class Category < ApplicationRecord
  has_many :tests

  default_scope { order(topic: :asc) }

  validates :topic, presence: true,
                    uniqueness: true
end
