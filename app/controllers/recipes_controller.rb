class RecipesController < ApplicationController
  before_action only: [:show, :edit, :update, :destroy]

  def new 
  	@recipe = Recipe.new
    @recipez = Recipe.new
  end

  def show
  	@recipe = Recipe.find(params[:id])
    @comments = Comment.where(recipe_id: @recipe).order("created_at DESC")
  end

  def create
  	@recipe = Recipe.new(recipe_params)
  	@recipe.user_id = current_user.id
    puts @recipe

  	if @recipe.save
  		flash[:success] = "Sucessfully created new recipe"
  		redirect_to '/users/' + current_user.id.to_s
  	else 
  		puts @recipe.errors.full_messages
  		redirect_to '/recipes/new', notice: "Couldn't save new recipe"
  	end
  end

  # private

  def recipe_params
  	params.require(:recipe).permit(:name, :description, :instruction, :time)
  end

  # def recipe_params
  # 	params.require(:recipe).permit(:name)
  # end

  def index
  	@recipe = Recipe.all.order("name ASC")
  end

  def search
    @recipe = Recipe.all.order("name ASC")
    @recipe = @recipe.search(params[:search]) if params[:search].present?
  end



end
