class DaysController < ApplicationController
  before_action :authenticate_user!
  before_action :get_day, only: [:show, :edit, :create, :destroy]

  def index
    @days = Day.all
  end

  def show
  end

  def new
    @day = current_user.days.build
  end

  def create
  end

  def edit
  end

  def update
  end
    
  def destroy
  end

  private
  def day_params
    params.require(:day).permit(:day_date)
  end

  def get_day
    @day = Day.find(params[:id])
  end
end
