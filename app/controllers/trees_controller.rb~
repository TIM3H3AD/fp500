class TreesController < ApplicationController

  def new
    @tree = Tree.new
  end

 def create
  @tree = Tree.new(params[:tree].permit
 
  if @tree.save
    redirect_to @tree
  else
    render 'new'
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

 end
