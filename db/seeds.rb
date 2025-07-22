# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
# db/seeds.rb

# Clear existing data
puts "Clearing existing data..."
DishesReview.destroy_all
Dish.destroy_all
Restaurant.destroy_all
User.destroy_all
Question.destroy_all

puts "Creating user..."
# Create user Matt
matt = User.create!(
  email: "matt@example.com",
  password: "password123",
  password_confirmation: "password123"
)

puts "Creating restaurants..."

# Restaurant 1: La Colombe (Constantia)
la_colombe = Restaurant.create!(
  name: "La Colombe",
  location: "Constantia, Cape Town",
  cuisine_type: "Contemporary South African",
  price_range: 4.5,
  description: "Award-winning restaurant nestled in the Constantia wine valley, offering innovative South African cuisine with stunning mountain views.",
  user: matt
)

# Restaurant 2: The Test Kitchen (Woodstock)
test_kitchen = Restaurant.create!(
  name: "The Test Kitchen",
  location: "Woodstock, Cape Town",
  cuisine_type: "Modern International",
  price_range: 5.0,
  description: "Luke Dale-Roberts' flagship restaurant offering creative, contemporary cuisine with global influences in a stylish industrial setting.",
  user: matt
)

# Restaurant 3: Harbour House (Kalk Bay)
harbour_house = Restaurant.create!(
  name: "Harbour House",
  location: "Kalk Bay, Cape Town",
  cuisine_type: "Seafood",
  price_range: 3.5,
  description: "Oceanfront restaurant specializing in fresh seafood with panoramic views of False Bay and the Whale Coast.",
  user: matt
)

puts "Creating dishes..."

# La Colombe dishes
la_colombe_dishes = [
  {
    name: "Karoo Lamb",
    description: "Slow-roasted Karoo lamb with indigenous herbs, sweet potato purée, and wild mushroom jus",
    price: 32000 # R320.00 in cents
  },
  {
    name: "Linefish Ceviche",
    description: "Fresh local linefish cured in citrus with avocado, cucumber, and chili oil",
    price: 18500 # R185.00 in cents
  },
  {
    name: "Springbok Carpaccio",
    description: "Thinly sliced springbok with rocket, parmesan, and Cape gooseberry reduction",
    price: 19500 # R195.00 in cents
  },
  {
    name: "Ostrich Medallions",
    description: "Grilled ostrich medallions with butternut squash, baby vegetables, and red wine jus",
    price: 28000 # R280.00 in cents
  },
  {
    name: "Chocolate Soil",
    description: "Signature dessert with chocolate mousse, candied nuts, and edible flowers",
    price: 14500 # R145.00 in cents
  }
]

# The Test Kitchen dishes
test_kitchen_dishes = [
  {
    name: "Tuna Tataki",
    description: "Seared yellowfin tuna with Asian aromatics, ponzu, and wasabi mayonnaise",
    price: 24500 # R245.00 in cents
  },
  {
    name: "Duck Breast",
    description: "Roasted duck breast with cherry gastrique, potato fondant, and seasonal greens",
    price: 35000 # R350.00 in cents
  },
  {
    name: "Beef Short Rib",
    description: "24-hour braised beef short rib with bone marrow, root vegetables, and red wine reduction",
    price: 38000 # R380.00 in cents
  },
  {
    name: "Kingklip",
    description: "Pan-seared kingklip with cauliflower purée, caviar, and brown butter",
    price: 29500 # R295.00 in cents
  },
  {
    name: "Deconstructed Cheesecake",
    description: "Innovative take on classic cheesecake with berry compote and graham cracker soil",
    price: 16500 # R165.00 in cents
  }
]

# Harbour House dishes
harbour_house_dishes = [
  {
    name: "Fish & Chips",
    description: "Beer-battered fresh hake with hand-cut chips, mushy peas, and tartare sauce",
    price: 16500 # R165.00 in cents
  },
  {
    name: "Grilled Crayfish",
    description: "Whole West Coast crayfish grilled with garlic butter and lemon",
    price: 45000 # R450.00 in cents
  },
  {
    name: "Seafood Platter",
    description: "Selection of fresh mussels, prawns, calamari, and linefish with rice",
    price: 38500 # R385.00 in cents
  },
  {
    name: "Yellowtail Sashimi",
    description: "Fresh yellowtail sashimi with soy, ginger, and wasabi",
    price: 22000 # R220.00 in cents
  },
  {
    name: "Malva Pudding",
    description: "Traditional South African malva pudding with vanilla ice cream and custard",
    price: 9500 # R95.00 in cents
  }
]

# Create dishes for each restaurant
la_colombe_dishes.each do |dish_data|
  la_colombe.dishes.create!(dish_data)
end

test_kitchen_dishes.each do |dish_data|
  test_kitchen.dishes.create!(dish_data)
end

harbour_house_dishes.each do |dish_data|
  harbour_house.dishes.create!(dish_data)
end

puts "Seed data created successfully!"
puts "Created:"
puts "- 1 user (Matt)"
puts "- 3 restaurants (La Colombe, The Test Kitchen, Harbour House)"
puts "- 15 dishes (5 per restaurant)"
puts "- #{User.count} users total"
puts "- #{Restaurant.count} restaurants total"
puts "- #{Dish.count} dishes total"
