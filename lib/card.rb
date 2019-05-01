class Card
  def initialize(value, suit, joker = false)
    @value = value
    @suit = suit
    @joker = joker
    @cards = []
  end

  def to_s
    @joker ? 'Joker' : "#{@value}#{@suit[0].downcase}"
  end
end