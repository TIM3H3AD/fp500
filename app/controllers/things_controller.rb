class ThingsController < ApplicationController
  before_action :logged_in_user, only: [:new, :create]
  before_action :correct_user, only: [:edit, :update, :destroy]

  def new
    @thing = Thing.new
  end

  def create
    @thing = current_user.created_things.build(thing_params)
    if @thing.save
      flash[:success] = "You have added a new Thing!"
      redirect_to @thing #things_path later
    else
      flash[:danger] = "The form contains erros"
      render :new
    end
  end

  def index
  @things = Thing.all
  end

  def show
  @thing = Thing.find(params[:id])
  end

  def edit
  @thing = Thing.find(params[:id])
  end

  def update
    @thing.update_attributes(thing_params)
    if @thing.save
      flash[:success] = "Update successful"
      redirect_to @thing
    else
      flash[:danger] = "Something went wrong"
      render :edit
    end
  end

  def destroy
    if @thing.destroy
      flash[:success] = "Your Thing was deleted successfully"
      redirect_to things_path
    else
      flash[:danger] = "Could not delete"
      render @thing
    end
  end

  private

  def thing_params
    params.require(:thing).permit(:title, :description, :location, :price)
  end

  def correct_user
    if current_user != @thing.creator
      flash[:danger] = "You don't have permission to do that."
      redirect_to root_url
    end
  end

 end
