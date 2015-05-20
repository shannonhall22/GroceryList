class Meal < ActiveRecord::Base
  def user
    User.find(self.user_id)
  end

  def recipe
    Recipe.find(self.recipe_id)
  end
end
