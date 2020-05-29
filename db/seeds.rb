# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

ingredient1 = Ingredient.create(name: "Rosemany", calories: 10)
ingredient2 = Ingredient.create(name: "Butter", calories: 100)
ingredient3 = Ingredient.create(name: "Steak", calories: 800)


chef = Chef.create(name:"a")

dish = Dish.create(name:"Steak Dinner", description: "awesome", chef_id: "#{chef.id}")

dish_ing = DishIngredient.create(dish_id: "#{dish.id}", ingredient_id: "#{ingredient1.id}")
dish_ing2 = DishIngredient.create(dish_id: "#{dish.id}", ingredient_id: "#{ingredient2.id}")
dish_ing3 = DishIngredient.create(dish_id: "#{dish.id}", ingredient_id: "#{ingredient3.id}")
