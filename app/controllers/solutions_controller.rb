class SolutionsController < ApplicationController
  before_filter :authenticate_user!, :except => [:show, :index]
  before_filter :set_solution, only: [:show, :edit, :update, :destroy]
  before_filter :validate_user!, :only => [:edit, :update]

  respond_to :html

  def new
    @solution = Solution.new
  end

  def create
    @solution = Solution.new(solution_params)

    if @solution.save
      respond_with(@solution) do |format|
        format.html { redirect_to @solution }
      end
    else
      respond_with(@solution) do |format|
        format.html { render :new }
      end
    end
  end

  def index
    @solutions = Solution.all
  end

  def show
  end

  def edit
  end

  def update
    @solution.update_attributes(solution_params)

    respond_with @solution
  end

  private

  def solution_params
    params.require(:solution).permit(:name, :description, :category, :photos_attributes => [:id, :image, :_destroy, :image_cache]).merge({
      user_id: current_user.id
    })
  end

  def set_solution
    @solution = Solution.find(params[:id])
  end

  def validate_user!
    if current_user != @solution.user
      redirect_to solution_path(params[:id])
    end
  end
end
