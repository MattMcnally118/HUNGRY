# Clear existing data in correct order
DishesReview.delete_all
Dish.delete_all
Question.delete_all
Restaurant.delete_all
User.delete_all

# Reset primary key sequences
ActiveRecord::Base.connection.reset_pk_sequence!('users')
ActiveRecord::Base.connection.reset_pk_sequence!('restaurants')
ActiveRecord::Base.connection.reset_pk_sequence!('dishes')

# Create test user

user = User.create!(email: "test@example.com", password: "password123")
ActiveRecord::Base.connection.reset_pk_sequence!('users')

Restaurant.create!(
  user: user,
  name: "The Brass Bell",
  location: "75 Main Rd, Kalk Bay, Cape Town, 7975",
  cuisine_type: "Seafood, Pub",
  price_range: "$$",
  description: "Iconic seaside venue with ocean-splashed decks, hearty seafood, and live music vibes.",
  number_of_people: 4,
  mood: "Casual, Coastal, Lively",
  dietary_restrictions: ["Pescatarian", "Vegetarian"]
)

Restaurant.create!(
  user: user,
  name: "Ocean Basket",
  location: "Shop 17, Piazza St. John’s, Main Rd, Sea Point, Cape Town",
  cuisine_type: "Seafood, Family Dining",
  price_range: "$$",
  description: "Family-friendly chain known for generous portions of grilled seafood, platters, and sushi.",
  number_of_people: 4,
  mood: "Family-Friendly, Bright, Informal",
  dietary_restrictions: ["Pescatarian", "Vegetarian"]
)

Restaurant.create!(
  user: user,
  name: "Codfather",
  location: "37 The Drive, Camps Bay, Cape Town, 8040",
  cuisine_type: "Seafood, Sushi",
  price_range: "$$$",
  description: "Choose-your-own fresh seafood and sushi spot with a sushi belt and beachfront views.",
  number_of_people: 2,
  mood: "Fresh, Interactive, Beachy",
  dietary_restrictions: ["Pescatarian", "Gluten-Free Options"]
)

Restaurant.create!(
  user: user,
  name: "Willoughby & Co",
  location: "Shop 6132, 19 Dock Road (Ground Level), Victoria Wharf, V&A Waterfront, Cape Town, 8002",
  cuisine_type: "Japanese, Seafood",
  price_range: "$$$",
  description: "Legendary V&A Waterfront sushi destination with a casual vibe and cult following.",
  number_of_people: 2,
  mood: "Bustling, No-Frills, Iconic",
  dietary_restrictions: ["Pescatarian", "Vegetarian"]
)

Restaurant.create!(
  user: user,
  name: "Aubergine Restaurant",
  location: "39 Barnet Street, Gardens, Cape Town, 8001",
  cuisine_type: "Fine Dining, European Fusion",
  price_range: "$$$$",
  description: "Elegant fine dining in a historic building, offering refined European-Asian fusion.",
  number_of_people: 2,
  mood: "Romantic, Elegant, Discreet",
  dietary_restrictions: ["Vegetarian", "Gluten-Free Options"]
)

Restaurant.create!(
  user: user,
  name: "Lebanese Bakery Cape Town",
  location: "7 Constitution St, Cape Town, 8001",
  cuisine_type: "Lebanese, Bakery",
  price_range: "$$",
  description: "Authentic Lebanese manakish, wraps, and flatbreads fresh from the oven.",
  number_of_people: 2,
  mood: "Casual, Middle Eastern, Aromatic",
  dietary_restrictions: ["Vegetarian", "Halal"]
)

Restaurant.create!(
  user: user,
  name: "Die Strandloper",
  location: "West Coast Road (R27), Langebaan",
  cuisine_type: "Seafood, Traditional South African",
  price_range: "$$$",
  description: "Laid-back beach braai experience in Langebaan with multi-course seafood cooked over fire.",
  number_of_people: 6,
  mood: "Rustic, Beach, Social",
  dietary_restrictions: ["Pescatarian"]
)

Restaurant.create!(
  user: user,
  name: "Roundhouse Restaurant",
  location: "The Roundhouse, Roundhouse Rd, Camps Bay, Cape Town, 8005",
  cuisine_type: "Fine Dining, Modern European",
  price_range: "$$$$",
  description: "Historic venue nestled on the slopes of Lion’s Head offering elegant cuisine and nature views.",
  number_of_people: 2,
  mood: "Refined, Forested, Tranquil",
  dietary_restrictions: ["Vegetarian", "Gluten-Free Options"]
)

Restaurant.create!(
  user: user,
  name: "Azure Restaurant",
  location: "The Twelve Apostles Hotel, Victoria Road, Camps Bay, Cape Town, 8005",
  cuisine_type: "Seafood, Contemporary South African",
  price_range: "$$$$",
  description: "Five-star dining experience with Atlantic views and locally inspired cuisine.",
  number_of_people: 2,
  mood: "Luxurious, Oceanfront, Elegant",
  dietary_restrictions: ["Vegetarian", "Pescatarian", "Gluten-Free Options"]
)

Restaurant.create!(
  user: user,
  name: "Nobu",
  location: "Dock Road, One&Only Cape Town, V&A Waterfront, Cape Town, 8001",
  cuisine_type: "Japanese-Peruvian, Fine Dining",
  price_range: "$$$$",
  description: "Globally renowned sushi and Japanese-Peruvian fusion restaurant with a sleek interior.",
  number_of_people: 2,
  mood: "Glamorous, Exclusive, Sophisticated",
  dietary_restrictions: ["Vegetarian", "Pescatarian", "Gluten-Free Options"]
)

Restaurant.create!(
  user: user,
  name: "Kyoto Garden Sushi",
  location: "11 Kloof Nek Road, Tamboerskloof, Cape Town, 8001",
  cuisine_type: "Japanese, Sushi",
  price_range: "$$$$",
  description: "Intimate Japanese dining spot known for its minimalist style and fresh sushi and seafood.",
  number_of_people: 2,
  mood: "Zen, Elegant, Intimate",
  dietary_restrictions: ["Pescatarian", "Vegetarian", "Gluten-Free Options"]
)

Restaurant.create!(
  user: user,
  name: "Simply Asia",
  location: "Food court, Victoria Wharf, V&A Waterfront, Cape Town, 8001",
  cuisine_type: "Thai, Asian Fusion",
  price_range: "$$",
  description: "Quick-service Thai food chain offering noodle dishes, curries, and stir-fries.",
  number_of_people: 2,
  mood: "Casual, Fast-Paced, Aromatic",
  dietary_restrictions: ["Vegetarian", "Vegan", "Halal"]
)

Restaurant.create!(
  user: user,
  name: "Col'Cacchio",
  location: "Food court, Victoria Wharf, V&A Waterfront, Cape Town, 8001",
  cuisine_type: "Italian, Pizza",
  price_range: "$$",
  description: "Family-friendly pizzeria offering gourmet thin-based pizzas, pastas, and salads.",
  number_of_people: 4,
  mood: "Casual, Friendly, Kid-Friendly",
  dietary_restrictions: ["Vegetarian", "Vegan", "Gluten-Free Options"]
)

Restaurant.create!(
  user: user,
  name: "Tiger's Milk",
  location: "44 Long Street, Cape Town, 8000",
  cuisine_type: "Burgers, Pizza, Bar",
  price_range: "$$",
  description: "Trendy spot for elevated comfort food, bold decor, and a strong cocktail menu.",
  number_of_people: 4,
  mood: "Vibrant, Urban, Social",
  dietary_restrictions: ["Vegetarian", "Gluten-Free Options"]
)

Restaurant.create!(
  user: user,
  name: "Boschendal",
  location: "Boschendal Wine Estate, between Franschhoek & Stellenbosch",
  cuisine_type: "Farm-to-Table, South African",
  price_range: "$$$",
  description: "Historic wine estate with seasonal menus, open-fire cooking, and a farm-to-table ethos.",
  number_of_people: 4,
  mood: "Rustic, Refined, Natural",
  dietary_restrictions: ["Vegetarian", "Gluten-Free Options"]
)

Restaurant.create!(
  user: user,
  name: "Babylonstoren",
  location: "Babylonstoren Road, Franschhoek, 7690",
  cuisine_type: "Farm-to-Table, Contemporary",
  price_range: "$$$$",
  description: "Breathtaking garden estate with innovative dishes inspired by daily harvests.",
  number_of_people: 2,
  mood: "Organic, Peaceful, Stylish",
  dietary_restrictions: ["Vegetarian", "Vegan", "Gluten-Free Options"]
)

Restaurant.create!(
  user: user,
  name: "Delaire Graff",
  location: "Off Helshoogte Pass, Stellenbosch",
  cuisine_type: "Fine Dining, Contemporary",
  price_range: "$$$$",
  description: "Luxury wine estate offering world-class cuisine and panoramic vineyard views.",
  number_of_people: 2,
  mood: "Luxurious, Scenic, Sophisticated",
  dietary_restrictions: ["Vegetarian", "Gluten-Free Options"]
)

Restaurant.create!(
  user: user,
  name: "Klein Constantia",
  location: "37 Klein Constantia Road, Constantia, Cape Town, 7806",
  cuisine_type: "Winery, South African Tasting",
  price_range: "$$$",
  description: "Historic estate offering wine tastings and light pairings in serene Constantia settings.",
  number_of_people: 2,
  mood: "Serene, Wine-Centric, Refined",
  dietary_restrictions: ["Vegetarian"]
)

Restaurant.create!(
  user: user,
  name: "Groot Constantia",
  location: "Groot Constantia Wine Estate, Groot Constantia Road, Constantia, 7806",
  cuisine_type: "South African, Heritage",
  price_range: "$$$",
  description: "South Africa's oldest wine estate with relaxed restaurants and heritage-rich surroundings.",
  number_of_people: 4,
  mood: "Historic, Tranquil, Family-Friendly",
  dietary_restrictions: ["Vegetarian", "Gluten-Free Options"]
)

Restaurant.create!(
  user: user,
  name: "Fairview Wine and Cheese",
  location: "Fairview Wine and Cheese, Paarl",
  cuisine_type: "Wine Tasting, Cheese, Mediterranean",
  price_range: "$$",
  description: "Paarl-based farm featuring artisanal cheese, wine tastings, and farm-fresh dining.",
  number_of_people: 4,
  mood: "Country-Chic, Rustic, Informative",
  dietary_restrictions: ["Vegetarian"]
)

Restaurant.create!(
  user: user,
  name: "HQ Restaurant",
  location: "100 Shortmarket Street, Cape Town Central, 8001",
  cuisine_type: "Steakhouse, Contemporary",
  price_range: "$$$",
  description: "Stylish steakhouse known for its minimalist menu of steak, salad, and fries, paired with live jazz and cocktails.",
  number_of_people: 2,
  mood: "Trendy, Sophisticated, Intimate",
  dietary_restrictions: ["Gluten-Free Options"]
)

Restaurant.create!(
  user: user,
  name: "Societi Bistro",
  location: "50 Orange Street, Gardens, Cape Town, 8001",
  cuisine_type: "Bistro, European",
  price_range: "$$",
  description: "Laid-back bistro offering hearty comfort food, local wines, and a cozy, Parisian-inspired atmosphere.",
  number_of_people: 4,
  mood: "Warm, Homely, Classic",
  dietary_restrictions: ["Vegetarian", "Gluten-Free Options"]
)

Restaurant.create!(
  user: user,
  name: "Dear Me",
  location: "165 Longmarket Street, Cape Town Central, 8000",
  cuisine_type: "Healthy, Contemporary",
  price_range: "$$",
  description: "Charming eatery with a focus on sustainable, wholesome meals and modern South African flair.",
  number_of_people: 2,
  mood: "Bright, Healthy, Thoughtful",
  dietary_restrictions: ["Vegetarian", "Vegan", "Gluten-Free Options"]
)

Restaurant.create!(
  user: user,
  name: "Fork Restaurant",
  location: "84 Long Street, Cape Town, 8000",
  cuisine_type: "Tapas, Contemporary",
  price_range: "$$",
  description: "Spanish-style tapas bar offering an inventive small-plates menu in a stylish, split-level space.",
  number_of_people: 2,
  mood: "Sociable, Modern, Lively",
  dietary_restrictions: ["Vegetarian", "Gluten-Free Options"]
)

Restaurant.create!(
  user: user,
  name: "Miller's Thumb",
  location: "10B Kloof Nek Road, Tamboerskloof, Cape Town, 8001",
  cuisine_type: "Seafood, Contemporary",
  price_range: "$$$",
  description: "Colorful neighborhood favorite for fresh seafood with bold, global flavors and a welcoming atmosphere.",
  number_of_people: 2,
  mood: "Colorful, Relaxed, Local",
  dietary_restrictions: ["Pescatarian", "Gluten-Free Options"]
)

Restaurant.create!(
  user: user,
  name: "Kloof Street House",
  location: "30 Kloof Street, Gardens, Cape Town, 8001",
  cuisine_type: "Eclectic, Contemporary",
  price_range: "$$$",
  description: "Eclectic mansion-turned-restaurant with bohemian decor, candlelit dining, and a lush courtyard.",
  number_of_people: 4,
  mood: "Romantic, Magical, Vintage",
  dietary_restrictions: ["Vegetarian", "Gluten-Free Options"]
)

Restaurant.create!(
  user: user,
  name: "Neighbourgoods Market",
  location: "The Old Biscuit Mill, 373–375 Albert Road, Woodstock, Cape Town, 8010",
  cuisine_type: "Global Street Food, Market",
  price_range: "$$",
  description: "Buzzing Saturday market featuring artisan eats, global street food, and local makers.",
  number_of_people: 2,
  mood: "Lively, Urban, Diverse",
  dietary_restrictions: ["Vegetarian", "Vegan", "Gluten-Free Options"]
)

Restaurant.create!(
  user: user,
  name: "Truth Coffee",
  location: "36 Buitenkant Street, Cape Town Central, 8000",
  cuisine_type: "Café, Breakfast & Brunch",
  price_range: "$$",
  description: "Steampunk-themed cafe serving ethically sourced coffee and elevated brunch classics.",
  number_of_people: 2,
  mood: "Edgy, Creative, Industrial",
  dietary_restrictions: ["Vegetarian", "Vegan", "Gluten-Free Options"]
)

Restaurant.create!(
  user: user,
  name: "Jason Bakery",
  location: "185 Bree Street, Cape Town Central, 8001",
  cuisine_type: "Bakery, Café",
  price_range: "$$",
  description: "Hip bakery famous for inventive pastries, artisanal breads, and brunch with a twist.",
  number_of_people: 2,
  mood: "Trendy, Casual, Morning Buzz",
  dietary_restrictions: ["Vegetarian"]
)

Restaurant.create!(
  user: user,
  name: "The Dog's Bollocks",
  location: "6 Roodehek Street, Gardens, Cape Town, 8001",
  cuisine_type: "Burgers, Comfort Food",
  price_range: "$$",
  description: "Gritty, hidden gem known for massive gourmet burgers served in an informal setting.",
  number_of_people: 2,
  mood: "Underground, Bold, Laid-Back",
  dietary_restrictions: ["Vegetarian", "Gluten-Free Options"]
)

Restaurant.create!(
  user: user,
  name: "Upper Union",
  location: "3 Upper Union St, Gardens, Cape Town, 8001",
  cuisine_type: "Modern Global",
  price_range: "$$$",
  description: "Innovative dishes influenced by global street food, served in a stylish heritage home setting.",
  number_of_people: 2,
  mood: "Trendy, Creative, Relaxed",
  dietary_restrictions: ["Vegetarian", "Vegan", "Gluten-Free Options"]
)

Restaurant.create!(
  user: user,
  name: "Tjing Tjing",
  location: "165 Longmarket Street, Cape Town Central, 8001",
  cuisine_type: "Japanese, Fusion",
  price_range: "$$$",
  description: "Trio of Japanese-inspired eateries housed in a 200-year-old building, known for bold flavors and cool decor.",
  number_of_people: 2,
  mood: "Hip, Playful, Eclectic",
  dietary_restrictions: ["Vegetarian", "Gluten-Free Options"]
)

Restaurant.create!(
  user: user,
  name: "Haiku",
  location: "58 Burg Street, Cape Town Central, 8000",
  cuisine_type: "Asian, Dim Sum, Sushi",
  price_range: "$$$",
  description: "Chic Asian fusion restaurant serving dim sum, sushi, and wok dishes in a moody, elegant space.",
  number_of_people: 2,
  mood: "Sleek, Sophisticated, Intimate",
  dietary_restrictions: ["Vegetarian", "Gluten-Free Options"]
)

Restaurant.create!(
  user: user,
  name: "Vadivelu",
  location: "151 Kloof St, Gardens, Cape Town, 8001",
  cuisine_type: "Indian, South Indian",
  price_range: "$$",
  description: "Vibrant South Indian spot offering authentic dosas, thali platters, and fiery curries.",
  number_of_people: 2,
  mood: "Spicy, Colorful, Casual",
  dietary_restrictions: ["Vegetarian", "Vegan", "Gluten-Free Options"]
)

Restaurant.create!(
  user: user,
  name: "Honest Chocolate Cafe",
  location: "64A Wale Street, Cape Town Central, 8001",
  cuisine_type: "Dessert, Café",
  price_range: "$$",
  description: "Bean-to-bar chocolate cafe offering truffles, hot chocolate, and raw vegan treats in a cozy courtyard.",
  number_of_people: 2,
  mood: "Sweet, Cozy, Artisanal",
  dietary_restrictions: ["Vegan", "Vegetarian", "Gluten-Free Options"]
)

Restaurant.create!(
  user: user,
  name: "Africa Cafe",
  location: "108–110 Shortmarket Street, Heritage Square, Cape Town Central, 8001",
  cuisine_type: "African, Pan-African",
  price_range: "$$$",
  description: "Colorful African restaurant offering a feast of flavors from across the continent in a communal style.",
  number_of_people: 4,
  mood: "Cultural, Vibrant, Festive",
  dietary_restrictions: ["Vegetarian", "Gluten-Free Options"]
)

Restaurant.create!(
  user: user,
  name: "Gold Restaurant",
  location: "15 Bennett Street, De Waterkant/Green Point, Cape Town, 8001",
  cuisine_type: "African, Fine Dining",
  price_range: "$$$",
  description: "Elegant pan-African restaurant with drumming, storytelling, and a multi-course dining experience.",
  number_of_people: 4,
  mood: "Theatrical, Welcoming, Cultural",
  dietary_restrictions: ["Vegetarian", "Gluten-Free Options"]
)

Restaurant.create!(
  user: user,
  name: "Mama Africa",
  location: "178 Long Street, Cape Town Central, 8001",
  cuisine_type: "African, South African",
  price_range: "$$",
  description: "Lively restaurant and bar celebrating African cuisine, music, and culture with a laid-back vibe.",
  number_of_people: 4,
  mood: "Festive, Rustic, Upbeat",
  dietary_restrictions: ["Vegetarian"]
)

Restaurant.create!(
  user: user,
  name: "Moyo",
  location: "Kirstenbosch National Botanical Garden, Rhodes Drive, Newlands, Cape Town, 7700",
  cuisine_type: "African, Contemporary",
  price_range: "$$",
  description: "Scenic garden restaurant serving a modern twist on traditional African flavors with live performances.",
  number_of_people: 4,
  mood: "Outdoor, Cultural, Relaxed",
  dietary_restrictions: ["Vegetarian", "Gluten-Free Options"]
)

Restaurant.create!(
  user: user,
  name: "The African Cafe",
  location: "108 Shortmarket Street, Cape Town Central, 8000",
  cuisine_type: "African, Traditional",
  price_range: "$$",
  description: "Artful African-themed restaurant dishing up homestyle fare with a welcoming, communal atmosphere.",
  number_of_people: 4,
  mood: "Cultural, Bright, Family-Style",
  dietary_restrictions: ["Vegetarian"]
)

Restaurant.create!(
  user: user,
  name: "Ganesh",
  location: "38 Trill Rd, Observatory, Cape Town, 7925",
  cuisine_type: "Indian, Fusion",
  price_range: "$$",
  description: "Bohemian Indian eatery offering creative takes on curries, wraps, and vegetarian dishes in a relaxed setting.",
  number_of_people: 2,
  mood: "Casual, Artistic, Quirky",
  dietary_restrictions: ["Vegetarian", "Vegan"]
)

Restaurant.create!(
  user: user,
  name: "La Boheme",
  location: "341 Main Road, Sea Point, Cape Town, 8005",
  cuisine_type: "Bistro, Mediterranean",
  price_range: "$$",
  description: "Neighborhood bistro serving hearty European-style cuisine and an extensive wine selection.",
  number_of_people: 2,
  mood: "Casual, Cozy, Unpretentious",
  dietary_restrictions: ["Vegetarian", "Gluten-Free Options"]
)

Restaurant.create!(
  user: user,
  name: "Cafe Paradiso",
  location: "110 Kloof Street, Gardens, Cape Town, 8001",
  cuisine_type: "Italian, Mediterranean",
  price_range: "$$",
  description: "Family-friendly eatery with a leafy courtyard and hearty Mediterranean fare, including pasta and wood-fired pizza.",
  number_of_people: 4,
  mood: "Warm, Family-Friendly, Rustic",
  dietary_restrictions: ["Vegetarian", "Gluten-Free Options"]
)

Restaurant.create!(
  user: user,
  name: "Greek Fisherman",
  location: "78 Regent Road, Sea Point, Cape Town, 8005",
  cuisine_type: "Greek, Seafood",
  price_range: "$$",
  description: "Long-standing restaurant offering classic Greek seafood dishes and grilled specialties near the oceanfront.",
  number_of_people: 4,
  mood: "Nautical, Relaxed, Traditional",
  dietary_restrictions: ["Pescatarian", "Vegetarian"]
)

Restaurant.create!(
  user: user,
  name: "Mykonos",
  location: "343 Main Road, Sea Point, Cape Town, 8005",
  cuisine_type: "Greek, Mediterranean",
  price_range: "$$",
  description: "Relaxed Greek restaurant known for meze platters, souvlaki, and authentic Aegean-inspired décor.",
  number_of_people: 2,
  mood: "Mediterranean, Informal, Lively",
  dietary_restrictions: ["Vegetarian", "Gluten-Free Options"]
)

Restaurant.create!(
  user: user,
  name: "Shortmarket Club",
  location: "88 Shortmarket Street, Cape Town Central, 8001",
  cuisine_type: "Contemporary, Fine Dining",
  price_range: "$$$$",
  description: "Sophisticated bistro-style venue with elevated plating, creative dishes, and an elegant retro atmosphere.",
  number_of_people: 2,
  mood: "Upscale, Classic, Elegant",
  dietary_restrictions: ["Vegetarian", "Gluten-Free Options"]
)

Restaurant.create!(
  user: user,
  name: "Belly of the Beast",
  location: "110 Harrington St, Cape Town City Centre, Cape Town, 8000",
  cuisine_type: "Modern South African",
  price_range: "$$$",
  description: "Reservation-only eatery with a surprise tasting menu using seasonal ingredients and nose-to-tail philosophy.",
  number_of_people: 2,
  mood: "Adventurous, Minimalist, Exclusive",
  dietary_restrictions: ["Pescatarian", "Vegetarian"]
)

Restaurant.create!(
  user: user,
  name: "The Restaurant at Newton Johnson",
  location: "R320 Hemel‑en‑Aarde Road, Upper Hemel‑en‑Aarde Valley, Hermanus, 7201",
  cuisine_type: "Modern South African, Fine Dining",
  price_range: "$$$$",
  description: "Wine estate restaurant with mountain views, offering seasonal menus inspired by the Overberg region.",
  number_of_people: 2,
  mood: "Scenic, Refined, Serene",
  dietary_restrictions: ["Vegetarian", "Gluten-Free Options"]
)

Restaurant.create!(
  user: user,
  name: "Carlyle's on Derry",
  location: "17 Derry Street, Vredehoek, Cape Town, 8001",
  cuisine_type: "Italian, Grill",
  price_range: "$$",
  description: "Neighborhood pizzeria and grill with a relaxed terrace and menu of steaks, burgers, and pastas.",
  number_of_people: 4,
  mood: "Casual, Local, Laid-back",
  dietary_restrictions: ["Vegetarian"]
)

Restaurant.create!(
  user: user,
  name: "Eighty-Ate",
  location: "88 Queen Victoria Street, Gardens (Cape Town CBD), 8001",
  cuisine_type: "Global Contemporary",
  price_range: "$$$",
  description: "Hotel restaurant known for elevated global cuisine, stylish interior, and quiet sophistication.",
  number_of_people: 2,
  mood: "Modern, Calm, Refined",
  dietary_restrictions: ["Vegetarian", "Gluten-Free Options"]
)

Restaurant.create!(
  user: user,
  name: "The Nelsons Eye",
  location: "31 Roodehek Street, Gardens, Cape Town, 8001",
  cuisine_type: "Steakhouse",
  price_range: "$$$",
  description: "Classic Cape Town steakhouse serving premium cuts of beef in a cozy, old-school setting.",
  number_of_people: 2,
  mood: "Traditional, Hearty, Intimate",
  dietary_restrictions: ["Gluten-Free Options"]
)

Restaurant.create!(
  user: user,
  name: "Our Local",
  location: "117 Kloof Street, Gardens, Cape Town, 8001",
  cuisine_type: "Café, Bistro",
  price_range: "$$",
  description: "Lush urban café and co-working space offering seasonal brunch and lunch dishes with a homey feel.",
  number_of_people: 2,
  mood: "Relaxed, Botanical, Artistic",
  dietary_restrictions: ["Vegetarian", "Vegan", "Gluten-Free Options"]
)

Restaurant.create!(
  user: user,
  name: "Mantra Cafe",
  location: "43 Victoria Road, Camps Bay, Cape Town, 8040",
  cuisine_type: "Mediterranean, Contemporary",
  price_range: "$$$",
  description: "Stylish beachfront restaurant with stunning ocean views, cocktails, and modern Mediterranean fare.",
  number_of_people: 2,
  mood: "Trendy, Beachy, Elegant",
  dietary_restrictions: ["Vegetarian", "Gluten-Free Options"]
)

Restaurant.create!(
  user: user,
  name: "Scala Pasta Bar",
  location: "81 Church Street, Cape Town City Centre, 8001",
  cuisine_type: "Italian",
  price_range: "$$",
  description: "Rustic Italian pasta bar offering handmade fresh pasta dishes in a cozy downtown spot.",
  number_of_people: 2,
  mood: "Warm, Rustic, Authentic",
  dietary_restrictions: ["Vegetarian"]
)

Restaurant.create!(
  user: user,
  name: "Brash Burgers",
  location: "90 Regent Road, Sea Point, Cape Town, 8005",
  cuisine_type: "American, Burgers",
  price_range: "$$",
  description: "Gourmet burger joint with juicy patties, loaded fries, and bold street-style flavors.",
  number_of_people: 2,
  mood: "Casual, Urban, Bold",
  dietary_restrictions: ["Vegetarian"]
)

Restaurant.create!(
  user: user,
  name: "Den Anker",
  location: "Pierhead, Victoria & Alfred Waterfront, Cape Town, 8001",
  cuisine_type: "Belgian, Seafood",
  price_range: "$$$",
  description: "Belgian-style brasserie with a harborside view, offering mussels, Belgian beers, and steaks.",
  number_of_people: 2,
  mood: "Classic, Waterfront, European",
  dietary_restrictions: ["Pescatarian", "Gluten-Free Options"]
)

Restaurant.create!(
  user: user,
  name: "Quay Four",
  location: "Quay 4 Dock Road, Victoria & Alfred Waterfront, Cape Town, 8001",
  cuisine_type: "Seafood, Pub",
  price_range: "$$",
  description: "Bustling harborfront eatery and bar serving seafood platters and live music in a casual setting.",
  number_of_people: 4,
  mood: "Lively, Nautical, Informal",
  dietary_restrictions: ["Pescatarian", "Vegetarian"]
)

Restaurant.create!(
  user: user,
  name: "Baia Seafood Restaurant",
  location: "Shop 7226, Victoria Wharf, V&A Waterfront, Cape Town, 8001",
  cuisine_type: "Seafood, Fine Dining",
  price_range: "$$$$",
  description: "Upscale seafood destination with panoramic views and a menu of fresh shellfish and grills.",
  number_of_people: 2,
  mood: "Elegant, Scenic, Romantic",
  dietary_restrictions: ["Pescatarian", "Gluten-Free Options"]
)

Restaurant.create!(
  user: user,
  name: "Ramenhead",
  location: "37 Parliament St, Cape Town City Centre, Cape Town, 8000",
  cuisine_type: "Japanese, Ramen",
  price_range: "$$",
  description: "Trendy ramen bar offering rich, umami-packed noodle bowls with house-made broth and toppings.",
  number_of_people: 2,
  mood: "Urban, Cool, Fast-Casual",
  dietary_restrictions: ["Vegetarian"]
)

Restaurant.create!(
  user: user,
  name: "Tomson",
  location: "120 Bree Street, Cape Town Central, 8001",
  cuisine_type: "Cantonese, Asian",
  price_range: "$$$",
  description: "Modern Cantonese eatery serving punchy small plates in a moody, minimalist interior.",
  number_of_people: 2,
  mood: "Trendy, Moody, Bold",
  dietary_restrictions: ["Vegetarian", "Gluten-Free Options"]
)

Restaurant.create!(
  user: user,
  name: "Blues Restaurant",
  location: "52 Victoria Road, Camps Bay, Cape Town, 8040",
  cuisine_type: "Seafood, Contemporary",
  price_range: "$$$",
  description: "Beachfront restaurant with ocean views, known for seafood platters and international cuisine.",
  number_of_people: 2,
  mood: "Chic, Scenic, Relaxed",
  dietary_restrictions: ["Pescatarian", "Vegetarian"]
)

Restaurant.create!(
  user: user,
  name: "La Med",
  location: "Glen Country Club, 3 Victoria Rd (near Clifton Beach), Cape Town, 8005",
  cuisine_type: "Mediterranean, Bar",
  price_range: "$$",
  description: "Iconic beach bar venue offering cocktails and Mediterranean bites with views of Clifton Beach.",
  number_of_people: 4,
  mood: "Lively, Coastal, Casual",
  dietary_restrictions: ["Vegetarian"]
)

Restaurant.create!(
  user: user,
  name: "Zenzero",
  location: "Shop 2A, The Promenade, Victoria Road, Camps Bay, 8040",
  cuisine_type: "Italian, Seafood",
  price_range: "$$$",
  description: "Upscale seaside Italian eatery with a modern menu of seafood and pastas, set on the Camps Bay strip.",
  number_of_people: 2,
  mood: "Elegant, Oceanfront, Stylish",
  dietary_restrictions: ["Vegetarian", "Gluten-Free Options"]
)

Restaurant.create!(
  user: user,
  name: "Nish Nush",
  location: "100 Bree St, Cape Town City Centre, Cape Town, 8000",
  cuisine_type: "Middle Eastern, Vegan",
  price_range: "$$",
  description: "Vegan-friendly Middle Eastern eatery with a playful twist on shawarma, hummus, and street food favorites.",
  number_of_people: 2,
  mood: "Trendy, Playful, Inclusive",
  dietary_restrictions: ["Vegan", "Vegetarian", "Gluten-Free Options"]
)

Restaurant.create!(
  user: user,
  name: "Café Caprice",
  location: "37 Victoria Road, Camps Bay, Cape Town, 8040",
  cuisine_type: "Cafe, Cocktail Bar",
  price_range: "$$",
  description: "Iconic beachfront café and cocktail bar known for sundowners, DJs, and scenic vibes.",
  number_of_people: 4,
  mood: "Trendy, Party, Beachy",
  dietary_restrictions: ["Vegetarian"]
)

Restaurant.create!(
  user: user,
  name: "Kitima",
  location: "Kronendal Estate, 140 Main Road, Hout Bay, Cape Town, 7806",
  cuisine_type: "Asian, Thai, Fusion",
  price_range: "$$$",
  description: "Luxurious Asian fusion restaurant set in a heritage estate, featuring Thai and Chinese classics.",
  number_of_people: 2,
  mood: "Elegant, Exotic, Historic",
  dietary_restrictions: ["Vegetarian", "Gluten-Free Options"]
)

Restaurant.create!(
  user: user,
  name: "Wang Thai",
  location: "Lagoon Beach Hotel, 36 Lagoon Beach Drive, Milnerton, Cape Town, 7441",
  cuisine_type: "Thai",
  price_range: "$$",
  description: "Seaside Thai restaurant offering traditional dishes and views over Table Bay.",
  number_of_people: 2,
  mood: "Romantic, Relaxed, Coastal",
  dietary_restrictions: ["Vegetarian", "Gluten-Free Options"]
)

Restaurant.create!(
  user: user,
  name: "La Parada",
  location: "V&A Waterfront (Central Pier), Cape Town, 8001",
  cuisine_type: "Spanish, Tapas",
  price_range: "$$",
  description: "Vibrant Spanish tapas bar known for small plates, sangria, and lively ambiance.",
  number_of_people: 4,
  mood: "Festive, Vibrant, Social",
  dietary_restrictions: ["Vegetarian"]
)

Restaurant.create!(
  user: user,
  name: "Pigalle",
  location: "57a Somerset Road, Green Point, Cape Town, 8060",
  cuisine_type: "Seafood, Steakhouse",
  price_range: "$$$$",
  description: "Elegant supper club-style venue with live jazz, seafood platters, and grilled meats.",
  number_of_people: 2,
  mood: "Classy, Glamorous, Evening",
  dietary_restrictions: ["Pescatarian", "Gluten-Free Options"]
)

Restaurant.create!(
  user: user,
  name: "Clarke's Bar & Dining Room",
  location: "33 Bree Street, Cape Town Central, 8001",
  cuisine_type: "American, Diner",
  price_range: "$$",
  description: "Trendy eatery serving all-day breakfasts, burgers, and cocktails with a downtown NYC vibe.",
  number_of_people: 2,
  mood: "Hip, Urban, Eclectic",
  dietary_restrictions: ["Vegetarian", "Gluten-Free Options"]
)
Restaurant.create!(
  user: user,
  name: "Cattle Baron",
  location: "TBD",
  cuisine_type: "Various",
  price_range: "$$",
  description: "Description to be added.",
  number_of_people: 4,
  mood: "Casual",
  dietary_restrictions: ["Vegetarian", "Vegan", "Gluten-Free"]
)


Restaurant.create!(
  user: user,
  name: "Chef's Warehouse & Canteen",
  location: "TBD",
  cuisine_type: "Various",
  price_range: "$$",
  description: "Description to be added.",
  number_of_people: 4,
  mood: "Casual",
  dietary_restrictions: ["Vegetarian", "Vegan", "Gluten-Free"]
)


Restaurant.create!(
  user: user,
  name: "Chef's Warehouse Beau Constantia",
  location: "TBD",
  cuisine_type: "Various",
  price_range: "$$",
  description: "Description to be added.",
  number_of_people: 4,
  mood: "Casual",
  dietary_restrictions: ["Vegetarian", "Vegan", "Gluten-Free"]
)


Restaurant.create!(
  user: user,
  name: "Chorus",
  location: "TBD",
  cuisine_type: "Various",
  price_range: "$$",
  description: "Description to be added.",
  number_of_people: 4,
  mood: "Casual",
  dietary_restrictions: ["Vegetarian", "Vegan", "Gluten-Free"]
)


Restaurant.create!(
  user: user,
  name: "Coy",
  location: "TBD",
  cuisine_type: "Various",
  price_range: "$$",
  description: "Description to be added.",
  number_of_people: 4,
  mood: "Casual",
  dietary_restrictions: ["Vegetarian", "Vegan", "Gluten-Free"]
)


Restaurant.create!(
  user: user,
  name: "Dusk",
  location: "TBD",
  cuisine_type: "Various",
  price_range: "$$",
  description: "Description to be added.",
  number_of_people: 4,
  mood: "Casual",
  dietary_restrictions: ["Vegetarian", "Vegan", "Gluten-Free"]
)


Restaurant.create!(
  user: user,
  name: "FYN",
  location: "TBD",
  cuisine_type: "Various",
  price_range: "$$",
  description: "Description to be added.",
  number_of_people: 4,
  mood: "Casual",
  dietary_restrictions: ["Vegetarian", "Vegan", "Gluten-Free"]
)


Restaurant.create!(
  user: user,
  name: "Grub & Vine",
  location: "TBD",
  cuisine_type: "Various",
  price_range: "$$",
  description: "Description to be added.",
  number_of_people: 4,
  mood: "Casual",
  dietary_restrictions: ["Vegetarian", "Vegan", "Gluten-Free"]
)


Restaurant.create!(
  user: user,
  name: "Harbour House",
  location: "TBD",
  cuisine_type: "Various",
  price_range: "$$",
  description: "Description to be added.",
  number_of_people: 4,
  mood: "Casual",
  dietary_restrictions: ["Vegetarian", "Vegan", "Gluten-Free"]
)


Restaurant.create!(
  user: user,
  name: "Hoseki",
  location: "TBD",
  cuisine_type: "Various",
  price_range: "$$",
  description: "Description to be added.",
  number_of_people: 4,
  mood: "Casual",
  dietary_restrictions: ["Vegetarian", "Vegan", "Gluten-Free"]
)


Restaurant.create!(
  user: user,
  name: "Hussar Grill",
  location: "TBD",
  cuisine_type: "Various",
  price_range: "$$",
  description: "Description to be added.",
  number_of_people: 4,
  mood: "Casual",
  dietary_restrictions: ["Vegetarian", "Vegan", "Gluten-Free"]
)


Restaurant.create!(
  user: user,
  name: "Jan Franschhoek",
  location: "TBD",
  cuisine_type: "Various",
  price_range: "$$",
  description: "Description to be added.",
  number_of_people: 4,
  mood: "Casual",
  dietary_restrictions: ["Vegetarian", "Vegan", "Gluten-Free"]
)


Restaurant.create!(
  user: user,
  name: "La Colombe",
  location: "TBD",
  cuisine_type: "Various",
  price_range: "$$",
  description: "Description to be added.",
  number_of_people: 4,
  mood: "Casual",
  dietary_restrictions: ["Vegetarian", "Vegan", "Gluten-Free"]
)


Restaurant.create!(
  user: user,
  name: "La Petite Colombe",
  location: "TBD",
  cuisine_type: "Various",
  price_range: "$$",
  description: "Description to be added.",
  number_of_people: 4,
  mood: "Casual",
  dietary_restrictions: ["Vegetarian", "Vegan", "Gluten-Free"]
)


Restaurant.create!(
  user: user,
  name: "Mertia",
  location: "TBD",
  cuisine_type: "Various",
  price_range: "$$",
  description: "Description to be added.",
  number_of_people: 4,
  mood: "Casual",
  dietary_restrictions: ["Vegetarian", "Vegan", "Gluten-Free"]
)


Restaurant.create!(
  user: user,
  name: "Newport Market & Deli",
  location: "TBD",
  cuisine_type: "Various",
  price_range: "$$",
  description: "Description to be added.",
  number_of_people: 4,
  mood: "Casual",
  dietary_restrictions: ["Vegetarian", "Vegan", "Gluten-Free"]
)


Restaurant.create!(
  user: user,
  name: "Ongetem",
  location: "TBD",
  cuisine_type: "Various",
  price_range: "$$",
  description: "Description to be added.",
  number_of_people: 4,
  mood: "Casual",
  dietary_restrictions: ["Vegetarian", "Vegan", "Gluten-Free"]
)


Restaurant.create!(
  user: user,
  name: "Ouzeri",
  location: "TBD",
  cuisine_type: "Various",
  price_range: "$$",
  description: "Description to be added.",
  number_of_people: 4,
  mood: "Casual",
  dietary_restrictions: ["Vegetarian", "Vegan", "Gluten-Free"]
)


Restaurant.create!(
  user: user,
  name: "Pier",
  location: "TBD",
  cuisine_type: "Various",
  price_range: "$$",
  description: "Description to be added.",
  number_of_people: 4,
  mood: "Casual",
  dietary_restrictions: ["Vegetarian", "Vegan", "Gluten-Free"]
)


Restaurant.create!(
  user: user,
  name: "Rust en Vrede",
  location: "TBD",
  cuisine_type: "Various",
  price_range: "$$",
  description: "Description to be added.",
  number_of_people: 4,
  mood: "Casual",
  dietary_restrictions: ["Vegetarian", "Vegan", "Gluten-Free"]
)


Restaurant.create!(
  user: user,
  name: "Salon",
  location: "TBD",
  cuisine_type: "Various",
  price_range: "$$",
  description: "Description to be added.",
  number_of_people: 4,
  mood: "Casual",
  dietary_restrictions: ["Vegetarian", "Vegan", "Gluten-Free"]
)


Restaurant.create!(
  user: user,
  name: "Salsify at The Roundhouse",
  location: "TBD",
  cuisine_type: "Various",
  price_range: "$$",
  description: "Description to be added.",
  number_of_people: 4,
  mood: "Casual",
  dietary_restrictions: ["Vegetarian", "Vegan", "Gluten-Free"]
)


Restaurant.create!(
  user: user,
  name: "The Butcher Shop & Grill",
  location: "TBD",
  cuisine_type: "Various",
  price_range: "$$",
  description: "Description to be added.",
  number_of_people: 4,
  mood: "Casual",
  dietary_restrictions: ["Vegetarian", "Vegan", "Gluten-Free"]
)


Restaurant.create!(
  user: user,
  name: "The Foodbarn",
  location: "TBD",
  cuisine_type: "Various",
  price_range: "$$",
  description: "Description to be added.",
  number_of_people: 4,
  mood: "Casual",
  dietary_restrictions: ["Vegetarian", "Vegan", "Gluten-Free"]
)


Restaurant.create!(
  user: user,
  name: "The Happy Uncles",
  location: "TBD",
  cuisine_type: "Various",
  price_range: "$$",
  description: "Description to be added.",
  number_of_people: 4,
  mood: "Casual",
  dietary_restrictions: ["Vegetarian", "Vegan", "Gluten-Free"]
)


Restaurant.create!(
  user: user,
  name: "The Pot Luck Club",
  location: "TBD",
  cuisine_type: "Various",
  price_range: "$$",
  description: "Description to be added.",
  number_of_people: 4,
  mood: "Casual",
  dietary_restrictions: ["Vegetarian", "Vegan", "Gluten-Free"]
)


Restaurant.create!(
  user: user,
  name: "The Red Room",
  location: "TBD",
  cuisine_type: "Various",
  price_range: "$$",
  description: "Description to be added.",
  number_of_people: 4,
  mood: "Casual",
  dietary_restrictions: ["Vegetarian", "Vegan", "Gluten-Free"]
)


Restaurant.create!(
  user: user,
  name: "The Table at De Meye",
  location: "TBD",
  cuisine_type: "Various",
  price_range: "$$",
  description: "Description to be added.",
  number_of_people: 4,
  mood: "Casual",
  dietary_restrictions: ["Vegetarian", "Vegan", "Gluten-Free"]
)


Restaurant.create!(
  user: user,
  name: "The Table at Oak Valley",
  location: "TBD",
  cuisine_type: "Various",
  price_range: "$$",
  description: "Description to be added.",
  number_of_people: 4,
  mood: "Casual",
  dietary_restrictions: ["Vegetarian", "Vegan", "Gluten-Free"]
)


Restaurant.create!(
  user: user,
  name: "The Test Kitchen",
  location: "TBD",
  cuisine_type: "Various",
  price_range: "$$",
  description: "Description to be added.",
  number_of_people: 4,
  mood: "Casual",
  dietary_restrictions: ["Vegetarian", "Vegan", "Gluten-Free"]
)
