class Gist < ApplicationRecord
  belongs_to :user
  belongs_to :question

  scope :gists_with_author_and_question, -> { select(:email, :question_id, :body, :url).joins(:user, :question) }
end
