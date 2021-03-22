class Test < ApplicationRecord
  belongs_to :category, optional: true
  belongs_to :authored_tests, class_name: 'User', foreign_key: 'user_id'

  has_many :questions, dependent: :destroy
  has_many :results
  has_many :users, through: :results

  validates :title, presence: true,
  validates :title, uniqueness: { scope: :level, message: :uniq_title_with_level }
  validates :level, numericality: { greater_than_or_equal_to: 0, only_integer: true }

  scope :easy, -> { where(level: 0..1) }
  scope :medium, -> { where(level: 2..4) }
  scope :hard, -> { where(level: 5..Float::INFINITY) }
  scope :all_with_category, -> (category){ joins(:category).where(categories: {title: category) }

  def self.all_with_category_array(category)
    all_with_category(category).order(title: :desc).pluck(:title)
  end
end
