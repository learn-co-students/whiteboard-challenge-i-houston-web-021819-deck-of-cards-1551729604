require 'pry'
class Deck
@@all = []

  def initialize
    @rank = ["A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"]
    @suit = ["Hearts", "Clubs", "Diamonds", "Spades"]
    @cards = []
    @rank.each do |rank|
      @suit.each do |suit|
      @cards << Card.new(rank, suit, self)
    end
  end

  def choose_card
    @cards.delete(@cards.sample)
  end
  
end

  def self.all
    @@all
end


  # def cards
  #   card.all.select {|card| card.deck == }
  # end
  # def choose_card
  #   card.all.sample
  #   {|card| card.deck == }
  # end
  # card.
  # end

end

class Card
  @@all = []

  def initialize(rank, suit, deck)
    @rank = rank
    @suit = suit
    @deck = deck
    @@all << self
end

  def self.all
    @@all
end

def card_1
  card1 = card.new
end

def card_2
  card2 = card.new
end

def card_3
  card3 = card.new
end

def card_4
  card4 = card.new
end
end
binding.pry
