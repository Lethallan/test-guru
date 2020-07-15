class QuestionsController < ApplicationController
  before_action :show_test, only: %i[show, show_questions, show_one_question]

  rescue_from ActiveRecord::RecordNotFound, with: :rescue_with_question_not_found

  def index
    show_questions
  end

  def show_questions
    render plain: Test.first.questions.inspect
  end

  def show_one_question
    render plain: Test.first.questions(:id).inspect
  end

  def new
  end

  def show
    body = Question.first.body
    render inline: '<%= @question.body %>'
  end

  def create
    new_question = Question.create(question_params)
    render plain: new_question.inspect
  end

  def delete
    Test.first.questions.delete(:id)
  end

  private

  def question_params
    params.require(:question).permit(:test_id, :body)
  end

  def rescue_with_question_not_found
    render plain: 'Question was not found'
  end

  def show_test
    @test = :question.test_id
    render inline: '<%= @test.title %>'
  end
end
