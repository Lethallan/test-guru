class QuestionsController < ApplicationController
  before_action :find_test, only: %i[index create]
  before_action :find_question, only: %i[show destroy]

  rescue_from ActiveRecord::RecordNotFound, with: :rescue_with_question_not_found

  def index
  end

  def new
  end

  def create
    Question.create(question_params)
    redirect_to action: :index
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
    @question.delete
    redirect_to action: :index
  end

  private

  def question_params
    params.require(:question).permit(:body)
  end

  def find_test
    @test = Test.find(params[:id])
  end

  def find_question
    @question = Question.find(params[:id])
  end

  def rescue_with_question_not_find
    render plain: 'No such question'
  end
end
