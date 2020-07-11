class Question < ApplicationRecord
  belongs_to :test
  has_many :answers

  validates :body, presence: true

  validate :validate_max_answers_amount

  private

  def validate_max_answers_amount
    amount = self.answers.size
    errors.add(amount) if amount > 4
  end
end
