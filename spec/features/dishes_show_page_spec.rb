require 'rails_helper'

RSpec.describe "when i visit a dishs show page" do
  it "shows a list of ingredients for that dish and the chefs name" do

    ingredient1 = Ingredient.create(name: "Rosemany", calories: 10)
    ingredient2 = Ingredient.create(name: "Butter", calories: 100)
    ingredient3 = Ingredient.create(name: "Steak", calories: 800)

    dish = Dish.create(name:"Steak Dinner")

    dish_ing = DishIngredient.create(dish_id: "#{dish.id}", ingredient: "#{ingredient1.id}")
    dish_ing2 = DishIngredient.create(dish_id: "#{dish.id}", ingredient: "#{ingredient2.id}")
    dish_ing3 = DishIngredient.create(dish_id: "#{dish.id}", ingredient: "#{ingredient3.id}")

    chef = Chef.create(name:"a")

    visit "/dishes/#{dish.id}"

    expect(page).to have_content("#{ingredient1.name}")
    expect(page).to have_content("#{ingredient2.name}")
    expect(page).to have_content("#{ingredient3.name}")
    expect(page).to have_content("#{chef.name}")


  end

end
