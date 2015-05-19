class RecipeIngredient < ActiveRecord::Base
  def recipes
    Recipe.find(self.recipe_id)
  end

  def ingredients
    Ingredient.find(self.ingredient_id)
  end
end
