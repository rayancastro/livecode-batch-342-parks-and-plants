puts "Cleaning the database..."

Garden.destroy_all if Rails.env.development?

puts "Generating gardens..."

Garden.create!(
  name: "My Big Garden",
  banner_url: "https://raw.githubusercontent.com/lewagon/fullstack-images/master/rails/parks-and-plants/garden_1.jpg"
)

Garden.create!(
  name: "Rose Garden",
  banner_url: "https://raw.githubusercontent.com/lewagon/fullstack-images/master/rails/parks-and-plants/garden_2.jpg"
)

puts "Optimizing everyone's happiness"

puts "We have now #{Garden.count} gardens"
