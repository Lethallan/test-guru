class TestsController < ApplicationController
  before_action :find_test, only: %i[show destroy edit]

  rescue_from ActiveRecord::RecordNotFound, with: :rescue_with_test_not_found

  def index #GET
    @tests = Test.all
  end

  def new #GET /tests/new
  end

  def create #POST
    Test.create(test_params)
    redirect_to action: :index
  end

  def show #GET /tests/:id
  end

  def edit #GET   /tests/:id/edit
  end

  def update #PATCH
  end

  def destroy #DELETE /tests/:id
    @test.delete
  end

  private

  def test_params
     params.require(:test).permit(:title, :level)
  end

  def find_test
    @test = Test.find(params[:id])
  end

  def rescue_with_test_not_found
    render plain: 'No such test'
  end
end


