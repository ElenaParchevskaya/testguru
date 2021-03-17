class Test < ApplicationRecord
  has_many :questions, dependent: :destroy
  has_many :results
  has_many :users, through: :results
  belongs_to :category
  belongs_to :authored_tests, class_name: 'User', foreign_key: 'user_id'

  def self.all_with_category(category)
    joins(:category)
         .where("categories.title = :name", name: category)
         .order(title: :desc)
         .pluck(:title)
  end
end
