class Answer < ApplicationRecord
  scope :true_answers, -> { where(correct: true) }

  belongs_to :question

  validates :body, presence: true
  validate :validate_max_answers, on: :create

  def validate_max_answers
    errors.add(:base, :max_answers) if question.answers.size > 4
  end
end
