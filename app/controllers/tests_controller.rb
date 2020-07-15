class TestsController < ApplicationController
  # skip_before_action :find_test, only: :show
  before_action :find_test, only: %i[show]
  after_action :send_log_message
  around_action :log_execute_time

  rescue_from ActiveRecord::RecordNotFound, with: :rescue_with_test_not_found

  def index
    # result = ["Class: #{params.class}", "Parameters: #{params.inspect}"]
    # render plain: result.join("\n")
    render html: '<h1>All tests</h1>'.html_safe
  end

  def show
    title = Test.first.title
    render inline: '<%= @test.title %>'
  end

  # def show_questions
  #   render plain: :test_id.questions.inspect
  # end

  def new
  end

  # http://127.0.0.1:3000/tests/new
  def create
    new_test = Test.create(test_params)
    render plain: new_test.inspect
  end
 #_______________________________________________

  private

  def test_params
     params.require(:test).permit(:title, :level)
  end

  # http://127.0.0.1:3000/tests/1
  def find_test
    @test = Test.find(params[:id])
  end

  def send_log_message
    logger.info("Action [#{action_name}] was finished")
  end

  def log_execute_time
    start = Time.now
    yield
    finish = Time.now - start
    logger.info("Execution time: #{finish * 1000}ms")
  end

  def rescue_with_test_not_found
    render plain: 'Test was not found'
  end
end


#_______________________________________________
  #предыдущий файл, созданный вручную, я перенесла в папку ruby,
  #где теперь образовалась помойка из черновиков

  #Этот закомментированный код был в том файле
  # и выводил просто строки в браузере

  #Тут короче дохуа примеров.
  # Все эти методы должны быть внутри класса, если что

  #__________________________________________________

  # def index
  #   render plain: 'All tests'
  # end

  # def start
  #   render plain: 'Start certain test'
  # end
  #_______________________________________________

  # def index
    # render html: '<h1>All tests</h1>'.html_safe

    # render json: { tests: [] }

    # render json: { tests: Test.all }

    # render inline: '<p>My favourite language is: <%= %[ybuR].reverse! %>!</p>'
    # рендерит смесь ruby и html

    # render file: 'public/hello'

    # render file: 'public/hello', layout: false

    # head 204

    # head :no_content

    # byebug

    # render inline: '<%= console %>'

    # logger.info(self.object_id)

    # respond_to do |format|
      # format.html { render plain: 'All tests' }
      # format.json { render json: { tests: Test.all } }
    # end
  # end

  # def show
   #render plain: 'Show test'

    #byebug
    # redirect_to root_path
    # redirect_to '/https://blablablabla.com'
  # end
  #_______________________________________________

  # def index
  #   # byebug

  #   result = ["Class: #{params.class}", "Parameters: #{params.inspect}"]

  #   render plain: result.join("\n")
  # end

  # def show
  #   redirect_to root_path
  # end
  #_______________________________________________

  # def new
  #   # params[:controller]

  #   #или

  #   # controller_name
  #   # action_name
  # end

  #определить пустой метод new для передачи post параметров:

  # def new
  # end

  # создать файл views/tests/new.html.erb
  #потом можно работать с этим файлом

  # def create
  #   # result = ["Class: #{params.class}", "Parameters: #{params.inspect}"]
  #   # render plain: result.join("\n")

  #   # test = Test.create(params[:test])

  #   test = Test.create(params.require(:test).permit(:title, :level))
  #   render plain: test.inspect
  # end

  #_______________________________________________
  # def index
  #   result = ["Class: #{params.class}", "Parameters: #{params.inspect}"]
  #   render plain: result.join("\n")
  # end

  # def show
  #   redirect_to root_path
  # end

  # def new
  # end

  # def search
  #   result = ["Class: #{params.class}", "Parameters: #{params.inspect}"]
  #   render plain: result.join("\n")
  # end

  # def create
  #   new_test = Test.create(test_params)

  #   render plain: new_test.inspect
  # end

  # private

  # def test_params
  #   params.require(:test).permit(:title, :level)
  # end
 #_______________________________________________
  #  # skip_before_action
  #  before_action :find_test
  #  #after_action :seng_log_message
  #  # around_action :log_executr_time

  #  def index
  #    result = ["Class: #{params.class}", "Parameters: #{params.inspect}"]
  #    render plain: result.join("\n")
  #  end

  #  def show
  #    redirect_to root_path

  #    title = Test.first.title
  #    render inline: '<%= title %>'
  #    #render inline: '<%= @test.title %>'
  #  end
  #____________________________________________
    # skip_before_action
  #   before_action :find_test, only: %i[show]
  #   #after_action :seng_log_message
  #   # around_action :log_executr_time

  #   def index
  #     result = ["Class: #{params.class}", "Parameters: #{params.inspect}"]
  #     render plain: result.join("\n")
  #   end

  #   def show
  #     title = Test.first.title
  #     render inline: '<%= @test.title %>'
  #   end

  #   private

  #   def find_test
  #     @test = Test.find(params[:id])
  #   end
  #________________________________________________
  #   # skip_before_action :find_test, only: :show
  #   before_action :find_test, only: %i[show]
  #   after_action :send_log_message
  #   around_action :log_execute_time

  #   def index
  #     result = ["Class: #{params.class}", "Parameters: #{params.inspect}"]
  #     render plain: result.join("\n")
  #   end

  #   def show
  #     title = Test.first.title
  #     render inline: '<%= @test.title %>'
  #   end

  #   private

  #   def find_test
  #     @test = Test.find(params[:id])
  #   end

  #   def send_log_message
  #     logger.info("Action [#{action_name}] was finished")
  #   end

  #   def log_execute_time
  #     start = Time.now
  #     yield
  #     finish = Time.now - start
  #     logger.info("Execution time: #{finish * 1000}ms")
  #   end
  #_______________________________________________
  #   # skip_before_action :find_test, only: :show
  #   before_action :find_test, only: %i[show]
  #   after_action :send_log_message
  #   around_action :log_execute_time

  #   rescue_from ActiveRecord::RecordNotFound, with: :rescue_with_test_not_found

  #   def index
  #     result = ["Class: #{params.class}", "Parameters: #{params.inspect}"]
  #     render plain: result.join("\n")
  #   end

  #   def show
  #     title = Test.first.title
  #     render inline: '<%= @test.title %>'
  #   end

  #   def new
  #   end

  #   def create
  #   end

  #   private

  #   def find_test
  #     @test = Test.find(params[:id])
  #   end

  #   def send_log_message
  #     logger.info("Action [#{action_name}] was finished")
  #   end

  #   def log_execute_time
  #     start = Time.now
  #     yield
  #     finish = Time.now - start
  #     logger.info("Execution time: #{finish * 1000}ms")
  #   end

  #   def rescue_with_test_not_found
  #     render plain: 'Test was not found'
  #   end
