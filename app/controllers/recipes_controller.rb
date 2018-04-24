class RecipesController < ApplicationController
  # def show
  # end

  def new 
  	@recipe = Recipe.new
  end

  def index
	@recipes = Recipe.all
	if params[:search]
		@recipes = Recipe.search(params[:search]).order("created_at DESC")
	else
		@recipes = Recipe.all.order("created_at DESC")
	end
  end


end
