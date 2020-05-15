# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

# Ingredient.create(name: "lemon")
# Ingredient.create(name: "ice")
# Ingredient.create(name: "mint leaves")

require 'json'
require 'open-uri'
require 'faker'
​
url = 'https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
ingredients_serialized = open(url).read
ingredients = JSON.parse(ingredients_serialized)
​
ingredients["drinks"].each do |i|
  Ingredient.create(name: i["strIngredient1"])
end

# url = "https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list"
# JSON.parse(Net::HTTP.get(URI.parse(url)))["drinks"].each do |ingredient|
#   Ingredient.create!(name: ingredient["strIngredient1"])
# end
