class Admin::TestsController < Admin::BaseController
  before_action :find_test, only: %i[show destroy edit update]

  rescue_from ActiveRecord::RecordNotFound, with: :rescue_with_test_not_found

  def index #GET
    @tests = Test.all
  end

  def new #GET /tests/new
    @test = Test.new
  end

  def create #POST
    @test = Test.new(test_params)
    current_user.author_tests.new(test_params)

    if @test.save
      redirect_to admin_tests_path, notice: t('.success')
    else
      render :new
    end
  end

  def show #GET /tests/:id
    @questions = @test.questions
  end

  def edit #GET   /tests/:id/edit
  end

  def update #PATCH
    if @test.update(test_params)
      redirect_to @test
    else
      render :edit
    end
  end

  def destroy #DELETE /tests/:id
    @test.destroy
    redirect_to admin_tests_path
  end

  private

  def test_params
     params.require(:test).permit(:title, :level, :category_id, :user_id)
  end

  def find_test
    @test = Test.find(params[:id])
  end

  def rescue_with_test_not_found
    render plain: 'No such test'
  end
end
