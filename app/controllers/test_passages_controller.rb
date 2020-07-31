class TestPassagesController < ApplicationController
  before_action :set_test_passage, only: %i[show update result]
  before_action :set_current_question_number, only: :show
  before_action :count_questions, only: %i[show result]


  def show
  end

  def result
    @percentage = @test_passage.correct_questions / @count_questions.to_f * 100
  end

  def update
    @test_passage.accept!(params[:answer_ids])

    if @test_passage.completed?
      redirect_to result_test_passage_path(@test_passage)
    else
      render :show
    end
  end

  private

  def set_test_passage
    @test_passage = TestPassage.find(params[:id])
  end

  def set_current_question_number
    @current_question_number = @test_passage.test.questions.index(@test_passage.current_question) + 1
  end

  def count_questions
    @count_questions = @test_passage.test.questions.count
  end

  def percentage
  end
end
