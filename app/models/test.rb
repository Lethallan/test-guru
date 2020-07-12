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

  #__________________
  #связи
  belongs_to :category
  belongs_to :author, class_name: 'User', foreign_key: 'user_id'
  has_many :questions
  # has_and_belongs_to_many :users
  has_many :tests_users
  has_many :users, through: :tests_users

  #__________________
  #скопы
  default_scope { order(created_at: :desc) }

  # scope :easy, -> { where(level: 0..1) }
  # scope :by_level, -> (level) { where(level: level) } #.order(created_at: :desc) - если нет дефолтного скопа

 #вернёт конкретный объект класса Test
  # def self.easy(level)
  #   where(level: level).first
  # end

  scope :easy, -> { where(level: 0..1) }
  scope :middle, -> { where(level: 2..4) }
  scope :hard, -> { where(level: 5...) }
  scope :by_category, -> (category_id) { where(category_id: category_id) }

  #__________________
  #валидации
  validates :title, presence: true,
                    uniqueness: true

  validates :level, numericality: { only_integer: true, greater_than_or_equal_to: 0 }

  #если у рельс нету нужного встроенного параметра
  validate :validate_max_level, on: :create

  # validates :level, numericality: { only_integer: true }, allow_nil: true, if: :ruby_test?

  private

  def validate_level
    errors.add(:level) if level.to_i > 10
  end

  # def ruby_test?
  #   title.match(/Ruby/i)
  # end

end
