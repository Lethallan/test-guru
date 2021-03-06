class TestPassagesController < ApplicationController
  before_action :set_test_passage, only: %i[show update result gist]
  before_action :count_questions, only: %i[show update result]


  def show
    redirect_to root_path if @test_passage.test.questions.empty?
  end

  def result
    @percentage = @test_passage.correct_questions / @count_questions.to_f * 100
    BadgesService.new(@test_passage).call
  end

  def update
    @test_passage.accept!(params[:answer_ids])

    if @test_passage.completed?

      TestsMailer.completed_test(@test_passage).deliver_now
      redirect_to result_test_passage_path(@test_passage)
    else
      render :show
    end
  end

  def gist
    gist_result = GistQuestionService.new(@test_passage.current_question)
    gist_result.call

    if gist_result.success?
      current_user.gists.create(question: @test_passage.current_question, gist_url: gist_result.gist_url)
      flash_options = { notice: t('.success', url: gist_result.gist_url) }
    else
      flash_options = { alert: t('.failure') }
    end

    redirect_to @test_passage
    flash_options[:notice] || flash_options[:alert]
  end

  private

  def set_test_passage
    @test_passage = TestPassage.find(params[:id])
  end

  def count_questions
    @count_questions = @test_passage.test.questions.count
  end
end
