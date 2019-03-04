require 'pry'

class Deck

attr_accessor :ranks, :suits

@@all = []
@@ranks = [*(2..10), 'J', 'Q', 'K', 'A']
@@suits = ['Hearts', 'Clubs', 'Diamonds', 'Spades']

  def initialize
    @@ranks.each do |rank|
      @@suits.each do |suit|
        Card.new(rank: rank, suit: suit, deck: self)
      end
    end
      @@all << self
  end

  def cards
    Card.all.select {|card| card.deck == self}
  end

  def choose_card
    random_card = self.cards.sample
    random_card.deck = nil
    random_card
  end

  def deck_length
    self.cards.length
  end
end

class Card

  attr_accessor :rank, :suit, :deck

  @@all = []

  def initialize(rank: , suit:, deck:)
    @rank = rank
    @suit = suit
    @deck = deck
    @@all << self
  end

  def self.all
    @@all
  end

end

deck = Deck.new()
#binding.pry
