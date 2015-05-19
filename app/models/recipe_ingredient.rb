class RecipeIngredient < ActiveRecord::Base
  def recipes
    Recipe.find(self.id)
  end

  def ingredients
    Ingredient.find(self.id)
  end
end
