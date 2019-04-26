puts "Let's play Pick a card"

require_relative 'lib/deck'

deck = Deck.new.shuffle

puts 'How many cards do you pick?'
number = STDIN.gets.to_i

number.times do
  puts deck.pop_random_card
end
