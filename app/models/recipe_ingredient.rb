class RecipeIngredient < ActiveRecord::Base
  def recipe
    Recipe.find(self.recipe_id)
  end

  def ingredient
    Ingredient.find(self.ingredient_id)
  end
end
