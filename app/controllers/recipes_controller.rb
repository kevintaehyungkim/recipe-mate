class RecipesController < ApplicationController
  # def show
  # end

  def new 
  	@recipe = Recipe.new
    @recipez = Recipe.new
  end

  def show
  	@recipe = Recipe.find(params[:id])
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
  	@recipe = Recipe.all
  	if params[:search]
  		@recipez = Recipe.where('name LIKE ?', "%#{params[:search]}%")
      @recipez.each do |r|
        puts r.name
      end

      redirect_to '/recipes'
  	else
  		@recipe = Recipe.all.order("created_at DESC")
  	end
  end


end
