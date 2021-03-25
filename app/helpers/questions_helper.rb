module QuestionsHelper
  HEADER = {'new' => 'Создать вопрос',
             'edit' => 'Редактировать вопрос'}.freeze

  def question_header(test_name)
    "#{HEADER[action_name]} #{test_name}"
  end
end
