# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])

require 'json'
Meal.destroy_all 
Ingredient.destroy_all 
MealIngredient.destroy_all 
User.destroy_all 

####### Meals ########
hummus = Meal.create(
    name: "Hummus Platter", 
    photo_url:"https://i.imgur.com/WkjpPn7.jpeg",
    likes: 7,
    origin: "Lebanon",
    instructions: "Place the garbanzo beans, tahini, lemon juice, salt and garlic in a blend until smooth. Drizzle olive oil, and sprinkle prinkle with paprika and parsley.")
 

brownie = Meal.create(
    name: "Roasted Almond Brownie",
    photo_url:"https://i.imgur.com/yRRGhva.jpg",
    likes: 10,
    origin: "North America",
    instructions: "Preheat the oven to 325 degrees F (165 degrees C). Grease an 8x8 inch square pan. In a medium saucepan, combine the sugar, butter and water. Cook over medium heat until boiling. Remove from heat and stir in chocolate chips until melted and smooth. Mix in the eggs and vanilla. Combine the flour, baking soda and salt; stir into the chocolate mixture. Spread evenly into the prepared pan. Bake for 25 to 30 minutes in the preheated oven, until brownies set up. Do not overbake! Cool in pan and cut into squares.")
    
burrito = Meal.create(
    name: "Hot Jalapeno Burrito",
    photo_url:"https://i.imgur.com/TF9ZrBd.jpeg",
    likes: 8,
    origin: "South America",
    instructions: "Place the shredded potatoes in a bowl, cover with water, and set aside. Bring the onion, garlic, green chiles, and chicken broth to a boil in a saucepan over high heat. Reduce the heat to low, and simmer until the sauce thickens; turn off the heat. Place the tortillas between two damp paper towels. Microwave on High until warm, about 30 seconds.Step 5Spray a separate skillet with butter flavored cooking spray and cook the eggs over medium heat, whisking them continuously until the eggs are completely set; turn off the heat.")   

smoothie = Meal.create(
    name: "Kale & Pineapple Smoothie",
    photo_url:"https://i.imgur.com/OUwrpnJ.jpg",
    likes: 6,
    origin: "North America",
    instructions: "Blend spinach, almond milk, peanut butter, chia seeds, and kale together in a blender until smooth. Add banana and blend until smooth.")
      
salad = Meal.create(
    name: "Seafood Salad",
    photo_url:"https://i.imgur.com/PRYnyCi.jpg",
    likes: 6,
    origin: "South Korea",
    instructions: "Combine shrimp, celery, onion, lemon juice, salt, pepper and one cup mayonnaise in a mixing bowl. Refrigerate and chill the shrimp mixture for at least one hour. Cut the tops off of the tomatoes and scoop out their insides; chill until the shrimp mixture is well chilled. Scoop the shrimp mixture into the hollowed out tomatoes. Serve.")

philly_cheese_steak = Meal.create(
    name: "Philly Cheese Steak",
    photo_url:"https://i.imgur.com/PRYnyCi.jpg",
    likes: 10,
    origin: "North America",
    instructions: "Add oil to a large non-stick skillet. Saute onions and 2 tablespoons of teriyaki sauce until the onions are soft. Add the sliced meat and cook until meat browns slightly, add remaining 1 tablespoon of teriyaki sauce and stir to combine. Place cheese on the meat and stir until melted, mixing meat, onions and cheese together. Scoop meat mixture onto sandwich rolls.")

eggplant_panini = Meal.create(
    name: "Roasted Eggplant Balsamic Panini",
    photo_url:"https://i.imgur.com/ByvhuUd.jpg",
    likes: 10,
    origin: "Italy",
    instructions: "Heat 1 tablespoon oil in a large skillet over medium heat. Add bell pepper and onion; cook until very tender, about 8 minutes. Transfer to a separate skillet. Stir in harissa sauce.Brush both sides of eggplant slices with remaining 2 tablespoons oil. Sprinkle with 1/8 teaspoon each salt and black pepper. Add 1/2 of the eggplant slices to the skillet. Cook until browned and tender, about 3 minutes per side. Repeat with remaining slices; keep warm.Layer eggplant slices, bell pepper mixture, and Halloumi on 4 bread slices. Top with remaining bread slices. Spread outsides of sandwiches with butter.")

macaroons= Meal.create(
    name: "Lavender Macaroons ",
    photo_url:"https://i.imgur.com/d7FVNvv.jpg",
    likes: 10,
    origin: "France",
    instructions: "In a large pot, add the olive oil and warm over medium heat. Add in the garlic and red pepper flakes, and give them a quick sauté for 20 seconds or so.,Add the tomato chunks in, give everything a stir, then put the lid on the pot and let the tomatoes cook over medium-low heat for 15 minutes.,split the contents into batches. Once all the tomatoes have been puréed, pour the entire purée back into the pot. Pour in the chicken broth and half n half. Bring the mixture to a simmer over low heat for 10 minutes.,Stir in the grated parmesan and a pinch of salt (to taste). Serve warm.")
    
ramen= Meal.create(
    name: "Ramen",
    photo_url:"https://i.imgur.com/o2Z4OhA.jpg",
    likes: 10,
    origin: "Japan",
    instructions: "In a large pot, heat oil over medium heat. Cook turmeric, ginger and chile paste in oil until fragrant, 1 to 2 minutes. Stir in chicken, broth, sugar, soy sauce and celery. Bring to a boil, then introduce noodles and cook 3 minutes. Stir in lettuce and remove from heat. Serve garnished with green onions.")

burrata= Meal.create(
    name: "Tomato Burrata Salad",
    photo_url:"https://i.imgur.com/3LKHK5B.jpg",
    likes: 10,
    origin: "Italy",
    instructions: "Preheat an outdoor grill for medium-high heat and lightly oil the grate.Cut peaches in half and remove peach stones. Cut each half in half again.Wrap prosciutto around each peach section; secure with small bamboo skewers.Grill peaches, turning often, until prosciutto gets a little crisp around the edges and the peaches begin to caramelize, about 6 minutes.To serve, spoon burrata onto serving plates. Remove peaches from skewers; place several of the grilled peaches around the cheese. Drizzle with olive oil. Top with a sprinkle of sea salt and pepper; garnish with basil.")  
   



######## Ingredients ########

tomato= Ingredient.create(
    name: "Tomato",
    category: "Vegetable"
)

oil= Ingredient.create(
    name: "Olive Oil",
    category: "Oil"
)

salt= Ingredient.create(
    name: "Salt",
    category: "Spice"
)

bread= Ingredient.create(
    name: "Bread",
    category: "Carb"
)
 
MealIngredient.create(meal: hummus, ingredient: salt) 
MealIngredient.create(meal: hummus, ingredient: oil) 


