require_relative 'p051gamecharacters'

gc = GameCharacter.new(120, "Magician", ['spells', 'invisibility'])


puts "#{gc.power} #{gc.type}"


gc.weapons.each do |w|
  puts w
end

File.open('game', 'w+') do |f|
  Marshal.dump(gc, f)
end

