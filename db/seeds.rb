puts "cleaning database..."
Restaurant.destroy_all

puts "creating restaurants..."

musa_dwich_club = {name: "Musa Dwich Club", address: "55 rue Jean-Jaurès 92170 Vanves", phone_number:"0123456789", category: "italian"}
sushi_tokyo = { name: "Sushi Tokyo", address: "456 Cherry Blossom Avenue, Tokyo", phone_number: "0987654321", category: "japanese" }
pasta_fresca ={ name: "Pasta Fresca", address: "789 Pasta Street, Rome", phone_number: "0123456789", category: "french" }
waffles_and_more = { name: "Waffles & More", address: "321 Belgian Delight Lane, Brussels", phone_number: "0134567890", category: "belgian" }
dragon_palace = { name: "Dragon Palace", address: "654 Dragon Road, Beijing", phone_number: "0145678901", category: "chinese" }

[musa_dwich_club, sushi_tokyo, pasta_fresca, waffles_and_more, dragon_palace].each do |resto|
  rest = Restaurant.create!(resto)
  puts "Created #{rest.name}"
end
puts "finished!"
