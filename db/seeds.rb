# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.destroy_all
user1 = User.create(email: 'shannon@example.com',
                    username: 'shannon',
                    image_url: 'https://randomuser.me/api/portraits/med/women/50.jpg',
                    password: '12341234',
                    password_confirmation: '12341234')

user2 = User.create(email: 'allen@example.com',
                    username: 'allen',
                    image_url: 'https://randomuser.me/api/portraits/med/men/2.jpg',
                    password: '12341234',
                    password_confirmation: '12341234')

Recipe.destroy_all
recipe1 = Recipe.create(name: 'Tacos',
                        cuisine: 'Mexican',
                        servings: 2,
                        prep_time: 10,
                        instructions: 'stuff for cooking',
                        meal_category: 'lunch',
                        creator_id: user1.id)

recipe2 = Recipe.create(name: 'Hamburgers',
                        cuisine: 'American',
                        servings: 4,
                        prep_time: 15,
                        instructions: 'stuff for cooking',
                        meal_category: 'dinner',
                        creator_id: user1.id)

recipe3 = Recipe.create(name: 'Salad',
                        cuisine: 'American',
                        servings: 2,
                        prep_time: 30,
                        instructions: 'stuff for cooking',
                        meal_category: 'lunch',
                        creator_id: user2.id)


Ingredient.destroy_all
ingredient1 = Ingredient.create(name: 'Cheese',
                                category: 'Dairy',
                                price_per_unit: '',
                                unit: '2')
ingredient2 = Ingredient.create(name: 'Tortillas',
                                category: 'Grains',
                                price_per_unit: '',
                                unit: '1')
ingredient3 = Ingredient.create(name: 'Ground Beef',
                                category: 'Meat',
                                price_per_unit: '',
                                unit: '3')
ingredient4 = Ingredient.create(name: 'Lettuce',
                                category: 'Vegetable',
                                price_per_unit: '',
                                unit: '2')
ingredient5 = Ingredient.create(name: 'Buns',
                                category: 'Grains',
                                price_per_unit: '',
                                unit: '2')
ingredient6 = Ingredient.create(name: 'Tomato',
                                category: 'Vegetable',
                                price_per_unit: '',
                                unit: '2')
ingredient7 = Ingredient.create(name: 'Ketchup',
                                category: 'Condiment',
                                price_per_unit: '',
                                unit: '2')
ingredient8 = Ingredient.create(name: 'Cucumber',
                                category: 'Vegetable',
                                price_per_unit: '',
                                unit: '2')
ingredient9 = Ingredient.create(name: 'Salad Dressing',
                                category: 'Condiment',
                                price_per_unit: '',
                                unit: '2')

Meal.destroy_all
meal1 = Meal.create(user_id: user2.id,
                    recipe_id: recipe1.id)

meal2 = Meal.create(user_id: user1.id,
                    recipe_id: recipe2.id)

meal3 = Meal.create(user_id: user1.id,
                    recipe_id: recipe3.id)

Recipe_Ingredient.destroy_all
recipe_ingredient1 = Recipe_Ingredient.create(recipe_id: recipe1.id,
                                              ingredient_id: ingredient1.id,
                                              amount: 2)
recipe_ingredient1 = Recipe_Ingredient.create(recipe_id: recipe1.id,
                                              ingredient_id: ingredient2.id,
                                              amount: 2)
recipe_ingredient1 = Recipe_Ingredient.create(recipe_id: recipe1.id,
                                              ingredient_id: ingredient3.id,
                                              amount: 2)
recipe_ingredient1 = Recipe_Ingredient.create(recipe_id: recipe4.id,
                                              ingredient_id: ingredient1.id,
                                              amount: 2)
recipe_ingredient1 = Recipe_Ingredient.create(recipe_id: recipe2.id,
                                              ingredient_id: ingredient1.id,
                                              amount: 2)
recipe_ingredient1 = Recipe_Ingredient.create(recipe_id: recipe2.id,
                                              ingredient_id: ingredient3.id,
                                              amount: 2)
recipe_ingredient1 = Recipe_Ingredient.create(recipe_id: recipe2.id,
                                              ingredient_id: ingredient4.id,
                                              amount: 2)
recipe_ingredient1 = Recipe_Ingredient.create(recipe_id: recipe2.id,
                                              ingredient_id: ingredient5.id,
                                              amount: 2)
recipe_ingredient1 = Recipe_Ingredient.create(recipe_id: recipe2.id,
                                              ingredient_id: ingredient6.id,
                                              amount: 2)
recipe_ingredient1 = Recipe_Ingredient.create(recipe_id: recipe2.id,
                                              ingredient_id: ingredient7.id,
                                              amount: 2)
recipe_ingredient1 = Recipe_Ingredient.create(recipe_id: recipe3.id,
                                              ingredient_id: ingredient1.id,
                                              amount: 2)
recipe_ingredient1 = Recipe_Ingredient.create(recipe_id: recipe3.id,
                                              ingredient_id: ingredient4.id,
                                              amount: 2)
recipe_ingredient1 = Recipe_Ingredient.create(recipe_id: recipe3.id,
                                              ingredient_id: ingredient6.id,
                                              amount: 2)
recipe_ingredient1 = Recipe_Ingredient.create(recipe_id: recipe3.id,
                                              ingredient_id: ingredient8.id,
                                              amount: 2)
recipe_ingredient1 = Recipe_Ingredient.create(recipe_id: recipe3.id,
                                              ingredient_id: ingredient9.id,
                                              amount: 2)






