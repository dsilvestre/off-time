# create surfboards
categories = ["GUN (7-12 feet)", "LONGBOARD (9-12 feet)", "HYBRID/ FUNBOARD (7-9 feet)", "SHORTBOARD (5.5-7 feet)", "EGG (6-8.5 feet)", "FISH (under 7 feet)", "TOW-IN (5-6 feet)"]
countries = ["Portugal", "Poland"]

Equipment.create(
  title: Faker::Company.catch_phrase,
  category: categories.sample,
  user_id: User.find(rand(1..4)),
  price: rand(6..15),
  country: "Portugal",
  street: "Av. Praia da Vitoria",
  building_number: "77b",
  postal_code: "1050-183",
  city: "Lisbon",
  remote_photo_url: "https://us.billabong.com/media/filter/l/img/surfboards_0513152251.jpg"
)
Equipment.create(
  title: Faker::Company.catch_phrase,
  category: categories.sample,
  user_id: User.find(rand(1..4)),
  price: rand(6..15),
  country: "Portugal",
  street: "Av. Praia da Vitoria",
  building_number: "77b",
  postal_code: "1050-183",
  city: "Lisbon",
  remote_photo_url: "https://us.billabong.com/media/filter/l/img/surfboards_0513152251.jpg"
)
Equipment.create(
  title: Faker::Company.catch_phrase,
  category: categories.sample,
  user_id: User.find(rand(1..4)),
  price: rand(6..15),
  country: "Portugal",
  street: "Av. Praia da Vitoria",
  building_number: "77b",
  postal_code: "1050-183",
  city: "Lisbon",
  remote_photo_url: "https://us.billabong.com/media/filter/l/img/surfboards_0513152251.jpg"
)


