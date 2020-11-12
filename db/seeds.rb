# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])

require 'json'
Meal.destroy_all 
User.destroy_all 
Origin.destroy_all 


#####Test User#####
bob = User.create(
    name: "Bob",
    password_digest: "password",
    photo_url: "https://www.biography.com/.image/c_fill%2Ccs_srgb%2Cfl_progressive%2Ch_400%2Cq_auto:good%2Cw_620/MTIwNjA4NjMzOTU5NTgxMTk2/bob-ross-9464216-1-402.jpg"
)

anney = User.create(
    name: "Anney",
    password_digest: "123",
    photo_url: "https://ca.slack-edge.com/T02MD9XTF-U018KT73BK3-e5fcb27689d7-512"
)

####### Origins ########
lebanon = Origin.create(name:"Lebanon")
namerica = Origin.create(name: "North America")
italy = Origin.create(name: "Italy")
samerica = Origin.create(name: "South America")
skorea = Origin.create(name: "South Korea")
france = Origin.create(name: "France")
japan = Origin.create(name: "Japan")
hawaii = Origin.create(name: "Hawaii")
belgium = Origin.create(name: "Belgium")
china = Origin.create(name: "China")


    
####### Meals ########
hummus = Meal.create(
    name: "Hummus Platter", 
    photo_url:"https://i.imgur.com/WkjpPn7.jpeg",
    likes: 7,
    instructions: "Place the garbanzo beans, tahini, lemon juice, salt and garlic in a blend until smooth. Drizzle olive oil, and sprinkle prinkle with paprika and parsley.",
    ingredients: "testing",
    user_id: bob.id,
    origin_id: lebanon.id  
)


 

brownie = Meal.create(
    name: "Roasted Almond Brownie",
    photo_url:"https://i.imgur.com/yRRGhva.jpg",
    likes: 10,
    instructions: "Preheat the oven to 325 degrees F (165 degrees C). Grease an 8x8 inch square pan. In a medium saucepan, combine the sugar, butter and water. Cook over medium heat until boiling. Remove from heat and stir in chocolate chips until melted and smooth. Mix in the eggs and vanilla. Combine the flour, baking soda and salt; stir into the chocolate mixture. Spread evenly into the prepared pan. Bake for 25 to 30 minutes in the preheated oven, until brownies set up. Do not overbake! Cool in pan and cut into squares.",
    ingredients: "testing",
    user_id: bob.id,
    origin_id: namerica.id  
)
    
burrito = Meal.create(
    name: "Spicy Jalapeno Burrito",
    photo_url:"https://i.imgur.com/TF9ZrBd.jpeg",
    likes: 8,
    instructions: "Place the shredded potatoes in a bowl, cover with water, and set aside. Bring the onion, garlic, green chiles, and chicken broth to a boil in a saucepan over high heat. Reduce the heat to low, and simmer until the sauce thickens; turn off the heat. Place the tortillas between two damp paper towels. Microwave on High until warm, about 30 seconds.Step 5Spray a separate skillet with butter flavored cooking spray and cook the eggs over medium heat, whisking them continuously until the eggs are completely set; turn off the heat.",
    ingredients: "testing",
    user_id: bob.id,
    origin_id: samerica.id    
)   

smoothie = Meal.create(
    name: "Kale & Pineapple Smoothie",
    photo_url:"https://i.imgur.com/OUwrpnJ.jpg",
    likes: 6,
    instructions: "Blend spinach, almond milk, peanut butter, chia seeds, and kale together in a blender until smooth. Add banana and blend until smooth.",
    ingredients: "testing",
    user_id: bob.id,
    origin_id: namerica.id    
)
      
salad = Meal.create(
    name: "Seafood Salad",
    photo_url:"https://i.imgur.com/PRYnyCi.jpg",
    likes: 6,
    instructions: "Combine shrimp, celery, onion, lemon juice, salt, pepper and one cup mayonnaise in a mixing bowl. Refrigerate and chill the shrimp mixture for at least one hour. Cut the tops off of the tomatoes and scoop out their insides; chill until the shrimp mixture is well chilled. Scoop the shrimp mixture into the hollowed out tomatoes. Serve.",
    ingredients: "testing",
    user_id: bob.id,
    origin_id: skorea    
)

philly_cheese_steak = Meal.create(
    name: "Philly Cheese Steak",
    photo_url:"https://i.imgur.com/A4HlHM1.jpg",
    likes: 10,
    instructions: "Add oil to a large non-stick skillet. Saute onions and 2 tablespoons of teriyaki sauce until the onions are soft. Add the sliced meat and cook until meat browns slightly, add remaining 1 tablespoon of teriyaki sauce and stir to combine. Place cheese on the meat and stir until melted, mixing meat, onions and cheese together. Scoop meat mixture onto sandwich rolls.",
    ingredients: "testing",
    user_id: bob.id,
    origin_id: namerica.id     
)

eggplant_panini = Meal.create(
    name: "Roasted Eggplant Balsamic Panini",
    photo_url:"https://i.imgur.com/ByvhuUd.jpg",
    likes: 10,
    instructions: "Heat 1 tablespoon oil in a large skillet over medium heat. Add bell pepper and onion; cook until very tender, about 8 minutes. Transfer to a separate skillet. Stir in harissa sauce.Brush both sides of eggplant slices with remaining 2 tablespoons oil. Sprinkle with 1/8 teaspoon each salt and black pepper. Add 1/2 of the eggplant slices to the skillet. Cook until browned and tender, about 3 minutes per side. Repeat with remaining slices; keep warm.Layer eggplant slices, bell pepper mixture, and Halloumi on 4 bread slices. Top with remaining bread slices. Spread outsides of sandwiches with butter.",
    ingredients: "testing",
    origin_id: italy.id )

macaroons= Meal.create(
    name: "Lavender Macaroons",
    photo_url:"https://i.imgur.com/d7FVNvv.jpg",
    likes: 10,
    instructions: "In a large pot, add the olive oil and warm over medium heat. Add in the garlic and red pepper flakes, and give them a quick sauté for 20 seconds or so.,Add the tomato chunks in, give everything a stir, then put the lid on the pot and let the tomatoes cook over medium-low heat for 15 minutes.,split the contents into batches. Once all the tomatoes have been puréed, pour the entire purée back into the pot. Pour in the chicken broth and half n half. Bring the mixture to a simmer over low heat for 10 minutes.,Stir in the grated parmesan and a pinch of salt (to taste). Serve warm.",
    ingredients: "testing",
    origin_id:france.id   )
    
ramen= Meal.create(
    name: "Spicy Beef Ramen",
    photo_url:"https://i.imgur.com/o2Z4OhA.jpg",
    likes: 10,
    instructions: "In a large pot, heat oil over medium heat. Cook turmeric, ginger and chile paste in oil until fragrant, 1 to 2 minutes. Stir in chicken, broth, sugar, soy sauce and celery. Bring to a boil, then introduce noodles and cook 3 minutes. Stir in lettuce and remove from heat. Serve garnished with green onions.",
    ingredients: "testing",
    origin_id: japan.id   )

burrata= Meal.create(
    name: "Tomato Burrata Salad",
    photo_url:"https://i.imgur.com/MqvtAlJ.jpg",
    likes: 10,
    instructions: "Preheat an outdoor grill for medium-high heat and lightly oil the grate.Cut peaches in half and remove peach stones. Cut each half in half again.Wrap prosciutto around each peach section; secure with small bamboo skewers.Grill peaches, turning often, until prosciutto gets a little crisp around the edges and the peaches begin to caramelize, about 6 minutes.To serve, spoon burrata onto serving plates. Remove peaches from skewers; place several of the grilled peaches around the cheese. Drizzle with olive oil. Top with a sprinkle of sea salt and pepper; garnish with basil.",
    ingredients: "testing",
    origin_id: italy.id )  

poke= Meal.create(
    name: "Spicy Poke",
    photo_url:"https://i.imgur.com/3LKHK5B.jpg",
    likes: 10,
    instructions: "In a small bowl combine the mayonnaise and sriracha, thin with a little water to drizzle.
    In a medium bowl, combine tuna with scallions, soy sauce, sesame oil and sriracha. Gently toss to combine and set aside while you prepare the bowls.
    In 2 bowls, layer 1/2 the rice, 1/2 the tuna, avocado, cucumber and scallions.Drizzle with spicy mayo and sesame seeds and serve with extra soy sauce on the side, if desired.",
    ingredients: "For the tuna
    1/2 pound sushi grade tuna, cut into 1/2-inch cubes
    1/4 cup sliced scallions
    2 tablespoons reduced sodium soy sauce or gluten-free tamari
    1 teaspoon sesame oil
    1/2 teaspoon sriracha
    For the spicy mayo
    2 tablespoons light mayonnaise
    2 teaspoons sriracha sauce
    For The Bowl
    1 cup cooked short grain brown rice or sushi white rice
    1 cup cucumbers, (from 2 Persian) peeled and diced 1/2-inch cubes
    1/2 medium Hass avocado, (3 ounces) sliced
    2 scallions, sliced for garnish
    1 teaspoon black sesame seeds
    Reduced sodium soy or gluten-free tamari, for serving (optional)
    sriracha, for serving (optional)",
    origin_id: hawaii.id )  

french_toast= Meal.create(
    name: "French Toas",
    photo_url:"https://i.imgur.com/Suac0Gy.jpg",
    likes: 10,
    instructions:"To start making this easy French toast recipe you will need to beat an egg, vanilla and cinnamon in shallow dish. Stir in milk.
    Dip bread in egg mixture, turning to coat both sides evenly.
    Cook bread slices on lightly greased nonstick griddle or skillet on medium heat until browned on both sides. Serve with Easy Spiced Syrup (recipe follows), if desired. Voila, easy French toast.
    Easy Spiced Syrup: Add 1 teaspoon McCormick® Pure Vanilla Extract and 1/4 teaspoon McCormick® Ground Cinnamon to 1 cup pancake syrup; stir well to mix. Serve warm, if desired." ,
    ingredients: "1 egg
    1 teaspoon 
    1/2 teaspoon 
    1/4 cup milk
    4 slices bread",
    origin_id: france.id )  

frenchfries= Meal.create(
    name: "French Fries",
    photo_url:"https://i.imgur.com/LgJ28en.jpg",
    likes: 10,
    instructions:"2 1/2 pounds russet potatoes
    Vegetable or peanut oil, for frying
    Sea salt, for sprinkling
    Ketchup and mayonnaise, mixed, for serving" ,
    ingredients: "Peel and rinse the potatoes. Cut each potato lengthwise into 4 or 5 pieces, then cut each piece into sticks. The thinner these are, the crispier they will be. Place the fries in a large bowl. Cover with cold water, then allow them to soak 2 or 3 hours (or you can stick them in the fridge and let them soak overnight). 
    When you're ready to make the fries, drain the water and lay the potatoes on 2 baking sheets lined with paper towels. Blot with paper towels to dry. 
    Heat a few inches of vegetable oil to 300 degrees F in a heavy pot. In 3 or 4 batches, fry the potatoes about 4 to 5 minutes per batch, or until soft. They should not be brown at all at this point-you just want to start the cooking process. Remove each batch and drain them on new, dry paper towels. 
    Once all the potatoes have been fried at 300 degrees F, turn up the heat until the oil temperature reaches 400 degrees F. When the oil is hot, start frying the potatoes in batches again, cooking until golden and crisp. Remove from the oil and drain on fresh paper towels. Sprinkle the fries with sea salt and dive in with the ketchup-mayo mixture. 
    ",
    origin_id: belgium.id ) 

coffee= Meal.create(
    name: "French Press Coffee",
    photo_url:"https://i.imgur.com/BxHYBjq.jpg",
    likes: 10,
    instructions:"Add a heaping tablespoon (7-8 grams) of coffee to the pot per 200 ml (6.7 oz) of water. Pour hot water—not quite boiling—into the pot, and gently stir. Carefully reinsert the plunger into the pot, stopping just above the water and ground coffee (do not plunge yet), and let stand for 3-4 minutes." ,
    ingredients: "test",
    origin_id: italy.id )  


    
salmon= Meal.create(
    name: "Salmon Salad",
    photo_url:"https://i.imgur.com/4n3Nzz6.jpg",
    likes: 10,
    instructions:"Start by making the sauce. Put the sugar and water into a non-reactive saucepan, gently bring to a gentle boil stirring all the time. Once boiling, add the ginger, garlic and chilli. Stir and boil to reduce to a thick, glossy sauce. Do not want to walk away while this is happening as the sauce can burn quickly and easily; any slight smell of burning, remove the pan from the heat immediately. Let the pan cool then return to a lower heat to finish the cooking. Once syrupy, add the fish sauce and lime juice. Put to one side.
    Lay the fresh salmon fillets on a sheet of kitchen paper. Check the salmon over for any small bones taking care to remove them. Cut the fillets into 1-inch cubes and place into a bowl. Spoon over the caramel sauce and stir gently. Put to one side while you prepare the salad." ,
    ingredients: "6 ounces beansprouts
    1 cup mint (leaves (fresh)
    ½ cup cilantro (fresh)
    2 cups mixed salad leaves (washed and dried)
    1 sweet onion (finely sliced)
    2 tablespoons salted peanuts (lightly crushed)
    1 lime (quartered)",
    user_id: anney.id,
    origin_id: japan.id )  

nattō= Meal.create(
    name: "Nattō Beef Platter",
    photo_url:"https://i.imgur.com/9mVYFln.jpg",
    likes: 10,
    instructions:"Place the hot cooked rice in a large rice bowl.
    In a small bowl, combine two packets of natto (fermented soybeans). If the package comes with packets of seasoning sauce and karashi (hot Japanese yellow mustard), add the contents to the bowl. Mix vigorously with chopsticks.
    Add in favorite garnishes to the natto. Additional soy sauce may also be desired, to suit individual taste. Any number and combinations of the above-suggested garnishes may be added into the natto mixture.
    Next, top the steamed rice with the mixed natto, and add extra garnishes as desired. Eat immediately." ,
    ingredients: "1 cup short-grain white rice (cooked)
    2 (50 gram) packets fermented soybeans (natto)
    1 teaspoon soy sauce (to taste)",
    user_id: anney.id,
    origin_id: japan.id )  

mushrooms= Meal.create(
    name: "Fried Beef and Mushrooms",
    photo_url:"https://i.imgur.com/Tf1Z03g.jpg",
    likes: 10,
    instructions:"
    Place the beef in a large bowl. Add the salt, sugar, ground black pepper, Shaoxing wine, soy sauce, 1 teaspoon oil, and cornstarch. Mix well and set aside for 30 minutes.When ready to cook, heat 2 tablespoons oil in a wok over high heat until smoking. Add the ginger. Cook for 30 seconds and then remove and discard the ginger.
    If the wok is no longer smoking, reheat until it is, then add the beef. Spread the beef out with the spatula, cook without moving until lightly browned, about 1 minute. Continue to cook while stirring regularly until half cooked, about 2 minutes longer. Transfer to a bowl and set aside.Heat 1 tablespoon oil in wok over high heat until smoking. Add the mushrooms. Stir and cook the mushrooms until they start releasing their water. Continue cooking, stirring frequently, until the water evaporates. Depending on the type of mushrooms you use, this can take 5 minutes or more." ,
    ingredients: "1/2 pound flank steak, sliced about 1/8 inch thick
    1/4 teaspoon salt
    1/4 teaspoon sugar
    1/8 teaspoon ground black pepper
    1/2 teaspoon Shaoxing wine
    1/2 teaspoon soy sauce
    1 teaspoon plus 3 tablespoons vegetable oil, divided
    1/2 teaspoon cornstarch
    1 ginger piece, sliced quarter inch thick
    1/2 pound mix variety of mushrooms, sliced about a quarter inch or more thick
    2 teaspoon soy sauce
    1 tablespoon butter
    2 medium cloves garlic, finely minced (about 1 teaspoon)
    Steamed white rice, for serving",
    user_id: anney.id,
    origin_id: china.id )  

salmon= Meal.create(
    name: "Spicy Salmon Rolls",
    photo_url:"https://i.imgur.com/VMufohE.jpg",
    likes: 10,
    instructions:"For the spicy mayo: In a small bowl, mix the mayonnaise, gochujang and fish sauce until thoroughly combined.
    For the sushi roll: On a sushi mat lay down the nori. Spread the sushi rice over the nori in an even layer. Place the salmon horizontally over the bottom third of the sheet, about 1 inch from the edge. Top with some scallions. Roll up tightly and cut into 4 pieces. Garnish with the spicy mayo." ,
    ingredients: "1 sheet nori, 1 cup cooked sushi rice, 2 or 3 thin slices salmon,Scallions, julienned ",
    user_id: anney.id,
    origin_id: japan.id ) 
    
ramen_anney= Meal.create(
    name: "Anney's Ramen",
    photo_url:"https://i.imgur.com/Ygu9YN3.jpg",
    likes: 10,
    instructions:"In a large pot, heat oil over medium heat. Cook turmeric, ginger and chile paste in oil until fragrant, 1 to 2 minutes. Stir in chicken, broth, sugar, soy sauce and celery. Bring to a boil, then introduce noodles and cook 3 minutes. Stir in lettuce and remove from heat. Serve garnished with green onions." ,
    ingredients: "2 chicken breasts (boneless, skin-on)*
    kosher salt and freshly-ground black pepper, to season
    1 tbsp unsalted butter
    2 tsp sesame or vegetable oil
    2 tsp fresh ginger, minced
    3 tsp fresh garlic, minced
    3 tbsp low-sodium soy sauce
    2 tbsp mirin",
    user_id: anney.id,
    origin_id: japan.id )  


dumpling_soup= Meal.create(
    name: "Dumpling Soup",
    photo_url:"https://i.imgur.com/uzCmslO.jpg",
    likes: 10,
    instructions:"Place all the flour and water in a mixer and kneed for about 5 minutes.
    Roll it into a round shape and wrap it with saran wrap then set aside for an hour.
    After 1 hour, sprinkle some flour on a kitchen bench surface and knead and roll the dough into a long, thin roll.
    Divide it into 20 small balls and roll each of them into a thin, flat round shape with a rolling pin (about 2mm thick). Keep them covered in flour to avoid sticking." ,
    ingredients: "2 x 5 g packets of Torigara soup chicken bone stock
    1.2 L water
    1 tsp soy sauce
    1 tsp ground ginger
    1 tsp sesame oil
    2 tsp white sesame coarsely ground
    Salt and pepper to taste
    2 leaves of Chinese cabbage
    Finely chopped shallots to garnish",
    user_id: anney.id,
    origin_id: china.id ) 

    veggies= Meal.create(
        name: "Fresh Veggie Platter",
        photo_url:"https://i.imgur.com/vVi7kAh.jpg",
        likes: 10,
        instructions:"Place all the flour and water in a mixer and kneed for about 5 minutes.
        Roll it into a round shape and wrap it with saran wrap then set aside for an hour.
        After 1 hour, sprinkle some flour on a kitchen bench surface and knead and roll the dough into a long, thin roll.
        Divide it into 20 small balls and roll each of them into a thin, flat round shape with a rolling pin (about 2mm thick). Keep them covered in flour to avoid sticking." ,
        ingredients: "2 x 5 g packets of Torigara soup chicken bone stock
        1.2 L water
        1 tsp soy sauce
        1 tsp ground ginger
        1 tsp sesame oil
        2 tsp white sesame coarsely ground
        Salt and pepper to taste
        2 leaves of Chinese cabbage
        Finely chopped shallots to garnish",
        origin_id: namerica.id ) 

