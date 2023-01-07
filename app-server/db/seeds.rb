puts "🌱 Seeding mixologists..."

  Mixologist.create(name: "Brian Flanagan")
  Mixologist.create(name: "Liliana Lovell")  

puts "🌱 Seeding drinks..."

Drink.create([
  {
    name: "A1",
    instructions: "Pour all ingredients into a cocktail shaker, mix and serve over ice into a chilled glass.", 
    ingredients: "Gin, Grand Marnier, Lemon Juice", 
    image: "https://www.thecocktaildb.com/images/media/drink/2x8thr1504816928.jpg",
    mixologist_id: Mixologist.first.id,
  },
  {
    name: "ABC",
    instructions: "Layered in a shot glass.", 
    ingredients: "Amaretto, Baileys irish cream, Cognac", 
    image: "https://www.thecocktaildb.com/images/media/drink/tqpvqp1472668328.jpg", 
    mixologist_id: Mixologist.second.id,
  },
  {
    name: "Ace",
    instructions: "Shake all the ingredients in a cocktail shaker and ice then strain in a cold glass.", 
    ingredients: "Gin, Grenadine, Heavy cream, Milk, Egg White", 
    image: "https://www.thecocktaildb.com/images/media/drink/l3cd7f1504818306.jpg",
    mixologist_id: Mixologist.first.id,
  },
  {
    name: "ACID",
    instructions: "Pour in the 151 first followed by the 101 served with a Coke or Dr Pepper chaser.", 
    ingredients: "151 proof rum, Wild Turkey", 
    image: "https://www.thecocktaildb.com/images/media/drink/xuxpxt1479209317.jpg",
    mixologist_id: Mixologist.second.id,
  },
  {
    name: "Adam",
    instructions: "n a shaker half-filled with ice cubes, combine all of the ingredients. Shake well. Strain into a cocktail glass.", 
    ingredients: "Dark rum, Lemon juice, Grenadine", 
    image: "https://www.thecocktaildb.com/images/media/drink/v0at4i1582478473.jpg",
    mixologist_id: Mixologist.first.id,
  },
  {
    name: "Dry Martini",
    instructions: "Straight: Pour all ingredients into mixing glass with ice cubes. Stir well. Strain in chilled martini cocktail glass. Squeeze oil from lemon peel onto the drink, or garnish with olive.", 
    ingredients: "Gin, Dry Vermouth, Olive", 
    image: "https://www.thecocktaildb.com/images/media/drink/6ck9yi1589574317.jpg",
    mixologist_id: Mixologist.last.id,
  },
  {
    name: "Old Fashioned", 
    instructions: "In an old-fashioned glass, muddle the bitters and water into the sugar cube, using the back of a teaspoon. Almost fill the glass with ice cubes and add the bourbon. Garnish with the orange slice and the cherry. Serve with a swizzle stick.", 
    ingredients: "Bitters, Water, Sugar, Bourbon, Orange, Maraschino cherry", 
    image: "https://www.thecocktaildb.com/images/media/drink/w8cxqv1582485254.jpg", 
    mixologist_id: Mixologist.first.id,
},
{
  name: "Mojito",
  instructions: "Muddle mint leaves with sugar and lime juice. Add a splash of soda water and fill the glass with cracked ice. Pour the rum and top with soda water. Garnish and serve with straw.", 
  ingredients: "Light rum, Lime, Sugar, Mint, Soda water",
  image: "https://www.thecocktaildb.com/images/media/drink/metwgh1606770327.jpg",
  mixologist_id: Mixologist.last.id,
},
{
  name: "Gin Tonic",
  instructions: "Fill a highball glass with ice, pour the gin, top with tonic water and squeeze a lemon wedge and garnish with a lemon wedge.", 
  ingredients: "Gin, Tonic Water, Lemon Peel, Ice", 
  image: "https://www.thecocktaildb.com/images/media/drink/qcgz0t1643821443.jpg",
  mixologist_id: Mixologist.first.id,
},
{
  name: "Margarita",
  instructions: "Rub the rim of the glass with the lime slice to make the salt stick to it. Take care to moisten only the outer rim and sprinkle the salt on it. The salt should present to the lips of the imbiber and never mix into the cocktail. Shake the other ingredients with ice, then carefully pour into the glass.", 
  ingredients: "Tequila, Triple sec, Lime juice, Salt", 
  image: "https://www.thecocktaildb.com/images/media/drink/5noda61589575158.jpg",
  mixologist_id: Mixologist.last.id,
},
{
  name: "Negroni",
  instructions: "Stir into glass over ice, garnish and serve.", 
  ingredients: "Gin, Campari, Sweet Vermouth", 
  image: "https://www.thecocktaildb.com/images/media/drink/qgdu971561574065.jpg",
  mixologist_id: Mixologist.first.id,
}, 
{
  name: "Pisco Sour",
  instructions: "Vigorously shake and strain contents in a cocktail shaker with ice cubes, then pour into glass and garnish with bitters.", 
  ingredients: "Pisco, Lemon juice, Sugar, Ice, Egg White", 
  image: "https://www.thecocktaildb.com/images/media/drink/tsssur1439907622.jpg",
  mixologist_id: Mixologist.last.id,
},

])

puts "✅ Done seeding!"


# {
#   name: "",
#   instructions: "", 
#   ingredients: "", 
#   image: "",
#   mixologist_id: Mixologist.first.id,
# },




##############################################################

  # [ 4] [
  #     [0] "Adam",
  #     [1] "Cocktail glass",
  #     [2] "Dark rum",
  #     [3] "Lemon juice",
  #     [4] "Grenadine",
  #     [5] nil,
  #     [6] "2 oz ",
  #     [7] "In a shaker half-filled with ice cubes, combine all of the ingredients. Shake well. Strain into a cocktail glass."
  # ],
  # [ 5] [
  #     [0] "AT&T",
  #     [1] "Highball Glass",
  #     [2] "Absolut Vodka",
  #     [3] "Gin",
  #     [4] "Tonic water",
  #     [5] nil,
  #     [6] "1 oz ",
  #     [7] "Pour Vodka and Gin over ice, add Tonic and Stir"
  # ],
  # [ 6] [
  #     [0] "A. J.",
  #     [1] "Cocktail glass",
  #     [2] "Applejack",
  #     [3] "Grapefruit juice",
  #     [4] nil,
  #     [5] nil,
  #     [6] "1 1/2 oz ",
  #     [7] "Shake ingredients with ice, strain into a cocktail glass, and serve."
  # ],
  # [ 7] [
  #     [0] "Affair",
  #     [1] "Highball glass",
  #     [2] "Strawberry schnapps",
  #     [3] "Orange juice",
  #     [4] "Cranberry juice",
  #     [5] "Club soda",
  #     [6] "2 oz ",
  #     [7] "Pour schnapps, orange juice, and cranberry juice over ice in a highball glass. Top with club soda and serve."
  # ],
  # [ 8] [
  #     [0] "Apello",
  #     [1] "Collins Glass",
  #     [2] "Orange juice",
  #     [3] "Grapefruit juice",
  #     [4] "Apple juice",
  #     [5] "Maraschino cherry",
  #     [6] "4 cl ",
  #     [7] "Stirr. Grnish with maraschino cherry."
  # ],
  # [ 9] [
  #     [0] "Avalon",
  #     [1] "Highball glass",
  #     [2] "Vodka",
  #     [3] "Pisang Ambon",
  #     [4] "Apple juice",
  #     [5] "Lemon juice",
  #     [6] "3 parts",
  #     [7] "Fill a tall glass with ice. Layer the Finlandia Vodka, lemon and apple juices, Pisang Ambon, and top up with lemonade. Stir slightly and garnish with a spiralled cucumber skin and a red cherry. The cucumber provides zest and looks attractive. This drink, created by Timo Haimi, took first prize in the 1991 Finlandia Vodka Long Drink Competition."
  # ],

############
# require 'rest-client'

# puts "🌱 Seeding drinks..."

# URL = "https://www.thecocktaildb.com/api/json/v1/1/lookup.php?i="

# # # drinks = ["martini", "Old Fashioned", "Mint Julep", "French 75", "White Russian"]
# drinks = ["14167", "11001", "17206", "17197", "12528"]

# # def get_response_body
#   uri = URI.parse(URL)
# puts uri
#   drinks.each do |drink|
#     # response = Net::HTTP.get_response("#{uri}#{drink}")
#     response = Net::HTTP.get "#{uri}#{drink}"
#     # response = RestClient.get "#{uri}#{drink}"


#     # response = Net::HTTP.get_response("#{uri}/#{drink}")
#     # https://www.thecocktaildb.com/api/json/v1/1/lookup.php?i=

#     # RestClient.get "#{URL}#{drink}"
#     # response = Net::HTTP.get_response(uri)

#     drink_hash = JSON.parse(response)
  
#     Drink.create(
#       name: drink_hash["strDrink"],
#       glass: drink_hash["strGlass"],
#       instructions_en: drink_hash["strInstructions"],
#       instructions_sp: drink_hash["strInstructions_sp"],
#       ingredient1: drink_hash["strIngredient1"], 
#       ingredient2: drink_hash["strIngredient2"],
#       ingredient3: drink_hash["strIngredient3"], 
#       # ingredient4: drink_hash["strIngredient4"], 
#       # ingredient5: drink_hash["strIngredient5"], 
#       measure1: drink_hash["strMeasure1"],
#       measure2: drink_hash["strMeasure2"],
#       measure3: drink_hash["strMeasure3"],
#       # measure4: drink_hash["strMeasure4"],
#       # measure5: drink_hash["strMeasure5"]
#     )
#   end

# # response.body

# # end


# # def parse_json
# #       data = JSON.parse(get_response_body) 
  
# #       # ap data["drinks"].first
# #   #     drinks = data["drinks"].collect do |obj|
  
# #   #       obj # ["strDrink"]
# #   #       # obj["strInstructions"]
# #   #     end
# #       # ap data # drinks
# #       puts data
# #     end

# puts "✅ Done seeding!"

############


# # these are the spells we want to add to the database
# spells = ["acid-arrow", "animal-messenger", "calm-emotions", "charm-person"]

# # iterate over each spell
# spells.each do |spell|
#   # make a request to the endpoint for the individual spell:
#   response = RestClient.get "https://www.dnd5eapi.co/api/spells/#{spell}"

#   # the response will come back as a JSON-formatted string.
#   # use JSON.parse to convert this string to a Ruby hash:
#   spell_hash = JSON.parse(response)

#   # create a spell in the database using the data from this hash:
#   Spell.create(
#     name: spell_hash["name"],
#     level: spell_hash["level"],
#     description: spell_hash["desc"][0] # spell_hash["desc"] returns an array, so we need to access the first index to get just a string of the description
#   )
# end


#########################################################

  # # Seed your database here

    # Make 2 mixologists
  # 2.times do
  #   User.create(name: Faker::Name.name)
  # end 

    # # Make 6 drinks
  # 6.times do
  #   drink = Drink.create(
  #     name
  #   )

  # Drink.create([
  #   {
  #     name: "A1",
  #     glass: "Cocktail glass",
  #     instructions_en: "Pour all ingredients into a cocktail shaker, mix and serve over ice into a chilled glass.",
  #     instructions_sp: nil,
  #     ingredient1: "Gin",
  #     ingredient2: "Grand Marnier",
  #     ingredient3: "Lemon Juice",
  #     ingredient4: "Grenadine",
  #     ingredient5: nil, 
  #     measure1: "1 3/4 shot",
  #     measure2: "1 Shot",
  #     measure3: "1/4 Shot",
  #     measure4: "1/8 Shot",
  #     measure5: nil,
  #     mixologist_id: Mixologist.first.id
  #   },
  #   {
  #     name: "ABC",
  #     glass: "Shot glass",
  #     instructions_en: "Layered in a shot glass.",
  #     instructions_sp: nil,
  #     ingredients: {
  #       ingredient1: "Amaretto",
  #       ingredient2: "Baileys irish cream",
  #       ingredient3: "Cognac",
  #     },

  #     # ingredient4: nil,
  #     # ingredient5: nil, 
  #     measure1: "1/3",
  #     measure2: "1/3",
  #     measure3: "1/3",
  #     # measure4: nil,
  #     # measure5: nil,
  #     mixologist_id: Mixologist.first.id
  #   },
  #   {
  #     name: "Ace",
  #     glass: "Martini Glass",
  #     instructions_en: "Shake all the ingredients in a cocktail shaker and ice then strain in a cold glass.",
  #     instructions_sp: nil,
  #     ingredient1: "Gin",
  #     ingredient2: "Grenadine",
  #     ingredient3: "Heavy cream",
  #     ingredient4: "Milk",
  #     ingredient5: "Egg White",
  #     measure1: "2 shots",
  #     measure2: "1/2 shot",
  #     measure3: "1/2 shot",
  #     measure4: "1/2 shot",
  #     measure5: "1/2 Fresh",
  #     mixologist_id: Mixologist.second.id
  #   },
  #   {    
  #     name: "ACID",
  #     glass: "Shot glass",
  #     instructions_en: "Poor in the 151 first followed by the 101 served with a Coke or Dr Pepper chaser.",
  #     instructions_sp: nil,
  #     ingredient1: "151 proof rum",
  #     ingredient2: "Wild Turkey",
  #     ingredient3: nil,
  #     ingredient4: nil,
  #     ingredient5: nil,
  #     measure1: "1 oz Bacardi",
  #     measure2: "1 oz",
  #     measure3: nil,
  #     measure4: nil,
  #     measure5: nil,
  #     mixologist_id: Mixologist.second.id
  #   }  
  # ])

  # Drink.create(
  #   name: "A1",
  #   glass: "Cocktail glass",
  #   instructions_en: "Pour all ingredients into a cocktail shaker, mix and serve over ice into a chilled glass.",
  #   instructions_sp: nil,
  #   ingredient1: "Gin",
  #   ingredient2: "Grand Marnier",
  #   ingredient3: "Lemon Juice",
  #   measure1: "1 3/4 shot"
  # )
  # Drink.create(
  #   name: "ABC",
  #   glass: "Shot glass",
  #   instructions_en: "Layered in a shot glass.",
  #   instructions_sp: nil,
  #   ingredient1: "Amaretto",
  #   ingredient2: "Baileys irish cream",
  #   ingredient3: "Cognac",
  #   measure1: "1/3"
  # )
  # Drink.create(
  #   name: "Ace",
  #   glass: "Martini Glass",
  #   instructions_en: "Shake all the ingredients in a cocktail shaker and ice then strain in a cold glass.",
  #   instructions_sp: nil,
  #   ingredient1: "Gin",
  #   ingredient2: "Grenadine",
  #   ingredient3: "Heavy cream",
  #   measure1: "2 shots"
  # )
  # Drink.create(
  #   name: "ACID",
  #   glass: "Shot glass",
  #   instructions_en: "Poor in the 151 first followed by the 101 served with a Coke or Dr Pepper chaser.",
  #   instructions_sp: nil,
  #   ingredient1: "151 proof rum",
  #   ingredient2: "Wild Turkey",
  #   ingredient3: nil,
  #   measure1: "1 oz Bacardi"
  # )
