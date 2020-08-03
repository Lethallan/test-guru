class Answer < ApplicationRecord
  belongs_to :question

  scope :correct, -> { where(correct: true) }

  validates :body, presence: true

  # validate :validate_max_answers_amount

  private

  # def validate_max_answers_amount
  #   amount = self.question.answers.size
  #   errors.add(amount) if amount > 4
  # end
end
