class Test < ApplicationRecord
  #связи
  belongs_to :category
  belongs_to :author, class_name: 'User', foreign_key: 'user_id'
  has_many :questions
  has_many :tests_users
  has_many :users, through: :tests_users

  #скопы
  default_scope { order(created_at: :desc) }

  scope :easy, -> { where(level: 0..1) }
  scope :middle, -> { where(level: 2..4) }
  scope :hard, -> { where(level: 5...) }
  scope :by_category, -> (category_id) { where(category_id: category_id) }

  #валидации
  validates :title, presence: true,
                    uniqueness: true

  validates :level, numericality: { only_integer: true, greater_than_or_equal_to: 0 }

  validate :validate_max_level, on: :create

  private

  def validate_max_level
    errors.add(:level) if level.to_i > 10
  end

end
