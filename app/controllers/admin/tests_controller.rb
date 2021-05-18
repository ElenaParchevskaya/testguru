# class Admin::TestsController < Admin::BaseController
#   before_action :set_test, only: %i[start show edit update destroy]
#
#   def index
#     @tests = Test.all
#   end
#
#   def show
#     @questions = @test.questions
#   end
#
#   def new
#     @test = Test.new
#   end
#
#   def create
#     @test = current_user.authored_tests.new(test_params)
#
#     if @test.save
#       redirect_to admin_tests_path
#     else
#       render :new
#     end
#   end
#
#   def edit; end
#
#   def update
#     if @test.update(test_params)
#       redirect_to test_path(@test)
#     else
#       render :edit
#     end
#   end
#
#   def destroy
#     @test.destroy
#       redirect_to admin_tests_path
#   end
#
#   private
#
#   def test_params
#     params.require(:test).permit(:title, :category_id, :level)
#   end
#
#   def set_test
#     @test = Test.find(params[:id])
#   end
# end

class Admin::TestsController < Admin::BaseController

  before_action :set_test, only: %i[start show edit update destroy]

  def index
     @tests = Test.all
   end

  def show
    @questions = @test.questions
  end

  def new
    @test = Test.new
  end

  def create
    @test = Test.new(test_params)
    @test.author = current_user

    if @test.save
      redirect_to admin_tests_path
    else
      render :new
    end
  end

  def edit; end

  def update
    if @test.update(test_params)
      redirect_to admin_test_path(@test)
    else
      render :edit
    end

  def destroy
    @test.destroy
    redirect_to admin_tests_path
  end

  private

  def test_params
    params.require(:test).permit(:title, :category_id, :level)
  end

  def set_test
    @test = Test.find(params[:id])
  end
end
