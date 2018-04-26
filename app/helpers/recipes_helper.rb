module RecipesHelper

	def recipe_rating
		if @recipe.num_ratings == 0
			return 0
		end
		1.0*@recipe.total_rating/@recipe.num_ratings
	end

end
