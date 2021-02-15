require 'faker'

puts 'Erasing Database 🚮'
Flat.destroy_all

puts 'Building new flats 🏗'

5.times {
    flat = Flat.create!(
        name: Faker::Movies::HarryPotter.location + ' ' + Faker::Address.street_suffix,
        address: Faker::Address.full_address,
        description: Faker::Hipster.paragraph_by_chars(characters: 120, supplemental: false),
        price_per_night: (35..999).to_a.sample,
        number_of_guests: rand(2..10)
    )
    puts "Created Flat #{flat.id}"
}

puts 'All done 👍'