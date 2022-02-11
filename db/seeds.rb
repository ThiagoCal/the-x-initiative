# TODO: Write a seed
require "faker"
puts "Populating DB"
5.times do
  squads = Squad.new(
      name: Faker::Superhero.suffix
    )
    squads.save
  30.times do
    xmen = Xman.new(
      name: Faker::Superhero.name,
      power: Faker::Superhero.power,
      gender: Faker::Gender.binary_type,
      age: (1..80).to_a.sample,
      squad_id: squads.id
    )
    xmen.save
  end
end

puts "#{Squad.count} squads created."
