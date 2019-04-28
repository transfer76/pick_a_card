require_relative 'card'

class Deck
  VALUES = ["2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K", "A"].freeze
  SUITS = ["♠","♥","♦","♣","♤","♡","♢","♧"].freeze

  def initialize
    @cards = []

    VALUES.zip(SUITS).map{ |value, suit| @cards << Card.new(value, suit) }
    
    2.times do
      @cards << Card.new(nil, nil, true)
    end
  end

  def shuffle
    @cards.shuffle!

    self
  end

  def get_random_card
    @cards.sample
  end

  def pop_random_card
    @cards.pop
  end
end
