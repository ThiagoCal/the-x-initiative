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

100.times do
  emergency = Emergency.new(
    location: Faker::Fantasy::Tolkien.location,
    solved: [true, false].sample
  )
  emergency.save
  10.times do
    squad = Squad.all.sample
    battle_plans = BattlePlan.new(
      name: Faker::DcComics.title,
      squad: squad,
      emergency: emergency
    )
    battle_plans.save
  end
end

puts "#{Squad.count} squads created."

puts "#{BattlePlan.count} battle plans created"
