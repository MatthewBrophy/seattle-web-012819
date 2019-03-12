Fountain.destroy_all
Wish.destroy_all
WishMaker.destroy_all

# SQL being written for us:

# INSERT INTO fountains (name, location)
# VALUES 
# ('F1', "NYC"),
# ('F2', Seattle),
# ....;

puts "CREATING FOUNTAINS"
30.times do 
  Fountain.create(
    name: Faker::AquaTeenHungerForce.character,
    location: Faker::ElderScrolls.city
  )
end
puts "CREATING WISH MAKERS"
30.times do
  WishMaker.create(
    name: Faker::ParksAndRec.character,
    age: rand(1..80),
    occupation: Faker::Job.title
  )
end

puts "CREATING WISHES"
100.times do
  Wish.create(
    content: Faker::ChuckNorris.fact,
    fountain_id: Fountain.all.sample.id,
    wish_maker_id: WishMaker.all.sample.id
  )
end
