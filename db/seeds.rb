


12.times do 
  Artist.create(
    name: Faker::Music::RockBand.name)
end

puts "seeded"