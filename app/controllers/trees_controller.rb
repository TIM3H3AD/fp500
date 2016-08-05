class TreesController < ApplicationController

  def new
    @tree = Tree.new
  end

 def create
    @tree = Tree.new(tree_params)
    if @tree.save
      flash[:success] = "You have added a new tree request!"
      redirect_to @tree #trees_path later
    else
      flash[:danger] = "The form contains errors"
      render :new
    end
end

  def index
  @trees = Tree.all
  end

  def show
  @tree = Tree.find(params[:id])
  end

  def edit
  @tree = Tree.find(params[:id])
  end

  def update
    @tree.update_attributes(tree_params)
    if @tree.save
      flash[:success] = "Update successful"
      redirect_to @tree
    else
      flash[:danger] = "Something went wrong"
      render :edit
    end
  end

  def destroy
    if @tree.destroy
      flash[:success] = "Your Tree was deleted successfully"
      redirect_to root_url
    else
      flash[:danger] = "Could not delete"
      render @tree
    end
  end

private

  def tree_params
    params.require(:tree).permit(:owner_name, :adress, :zip_code, :message, :current_estimate, :company_name, :company_contact, :company_phone)
  end

 end
