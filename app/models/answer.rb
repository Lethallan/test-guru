class Answer < ApplicationRecord
  belongs_to :question

  scope :by_correct, -> { where(correct: true) }

  validates :body, presence: true
end
