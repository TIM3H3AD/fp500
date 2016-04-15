class StaticPagesController < ApplicationController

  def home
  @things = Thing.all
  end

  def about
  end
    
  def u
  end

end