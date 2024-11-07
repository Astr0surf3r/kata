def cakes(recipe, available)
  recipe.map do |ingredient, amount_needed|

    return 0 unless available[ingredient]

    available[ingredient] / amount_needed
  end.min # Return the minimum across all ingredients which is the limiting factor
end

# Define the recipe
recipe = {flour: 500, sugar: 200, eggs: 1}

# Define list of available ingredients
elements1 = {flour: 1200, sugar: 1200, eggs: 5, milk: 200}
elements2 = {flour: 500, sugar: 2000, milk: 200}
elements3 = {flour: 3000, sugar: 1200, milk: 200, apples: 15}

# List of all ingredients
total_of_ingredients = [elements1, elements2, elements3]

# Iterate through each available ingredients and puts the maximum number of cakes
total_of_ingredients.each_with_index do |available, i|
  max_cakes = cakes(recipe, available)
  puts "With ingredients set #{i + 1}, you can make #{max_cakes} cake(s)."
end
