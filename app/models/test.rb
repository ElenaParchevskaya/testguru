class Test < ApplicationRecord
  belongs_to :category, optional: true
  belongs_to :authored_tests, class_name: 'User', foreign_key: 'user_id'

  has_many :questions, dependent: :destroy
  has_many :results
  has_many :users, through: :results

  def self.all_with_category(category)
    joins(:category)
         .where(categories: {title: category})
         .order(title: :desc)
         .pluck(:title)
  end
end
