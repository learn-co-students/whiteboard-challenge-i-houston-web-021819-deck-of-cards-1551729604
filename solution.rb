class Card
  @@all = []
  attr_accessor :suit, :rank, :deck

  def initialize (suit, rank)
    self.suit = suit
    self.rank = rank
    @@all << self
  end

  def self.all
    @@all
  end

end

class Deck
  def initialize
    self.make_a_deck.each do |card|
      card.deck = self
    end
  end

  def make_a_deck
    deck_of_cards = []
    card_ranks = ["A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"]
    card_suits = ["Clubs", "Diamonds", "Hearts", "Spades"]
    card_ranks.each do |c_r|
      card_suits.each do |c_s|
        new_card = Card.new(c_s, c_r)
        deck_of_cards << new_card
      end
    end
    deck_of_cards
  end

  def cards
    Card.all.select {|card| card.deck == self}
  end

  def choose_card
    chosen_card = self.cards.sample
    chosen_card.deck = nil
    chosen_card
  end
end
