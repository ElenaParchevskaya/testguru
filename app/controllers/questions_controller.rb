class QuestionsController < ApplicationController
  before_action :get_test, only: %i[index create]
  before_action :find_question, only: %i[show destroy]

  rescue_from ActiveRecord::RecordNotFound, with: :rescue_with_quest_not_found

  def index
    @questions = @test.questions
  end

  def show
  end

  def new
  end

  def create
    @question = @test.questions.new(question_params)
    if @question.save
      redirect_to test_questions_path
    else
      render plain: 'Что-то не так'
    end
  end

  def destroy
    @question.destroy
    redirect_to test_questions_path(@question.test)
  end

  private

  def find_question
    @question = Question.find(params[:id])
  end

  def question_params
    params.require(:question).permit(:body)
  end

  def get_test
    @test = Test.find(params[:test_id])
  end

  def rescue_with_quest_not_found
    render plain: 'Запрос не найден'
  end
end
