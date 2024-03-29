class TestPassage < ApplicationRecord
  SUCCES_PERCENTAGE = 85

  belongs_to :user
  belongs_to :test
  belongs_to :current_question, class_name: 'Question', optional: true, foreign_key: 'question_id'

  before_validation :before_validation_set_first_question, on: :create

  def accept!(answer_ids)
    return if times_up?

    self.correct_questions += 1 if correct_answers?(answer_ids)
    self.current_question = next_question
    save!
  end

  def completed?
    current_question.nil? || times_up?
  end

  def success?
    result >= SUCCES_PERCENTAGE
  end

  def mark_as_passed
    if success?
      update(passed: true)
    else
      update(passed: false)
    end
  end

  def result
    correct_questions * 100.0 / test.questions.size if completed?
  end

  def current_question_number
    test.questions.order(:id).where('id < ?', current_question.id).size + 1
  end

  def times_up?
    timer_exists? ? false : times_up <= Time.current
  end

  def left_time
    return false if timer_exists?

    time = times_up - Time.current
    time.positive? ? time : 0
  end

  def timer_exists?
    test.timer.nil?
  end

  private

  def times_up
    created_at + test.timer.minutes
  end

  def correct_answers?(answer_ids)
    answer_ids ? correct_answers.ids.sort == answer_ids.map(&:to_i).sort : false
  end

  def correct_answers
    current_question.answers.correct
  end

  def before_validation_set_first_question
    self.current_question = test.questions.first if test.present?
  end

  def next_question
    test.questions.order(:id).where('id > ?', current_question.id).first
  end
end
