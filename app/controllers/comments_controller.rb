class CommentsController < ApplicationController

	before_action :find_recipe


	def create
		@recipe = Recipe.find(params[:recipe_id])
		@comment = @recipe.comments.create(params[:comment].permit(:content))
		@comment.user_id = current_user.id
		@comment.save

		if @comment.save
			redirect_to recipe_path(@recipe)
		end
	end

	private

	def find_recipe
		@recipe = Recipe.find(params[:recipe_id])
	end

end
