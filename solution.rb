require 'pry'

class Card
    attr_accessor :rank, :suit, :deck
    @@all = []
    def initialize(suit, rank, deck)
        self.rank = rank
        self.suit = suit
        self.deck = deck
        @@all << self
    end
    def self.all
        @@all
    end
end

class Deck
 
 def initialize
    ranks =["A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"]
    suits = ["Hearts", "Clubs", "Diamonds", "Spades"]
    rank = ranks.each do |rank|
        suit  = suits.each do |suit|
              Card.new(suit, rank, self)
        end
    end
 end
 def cards
    Card.all.select do |card|
        card.deck == self
    end
 end

 def choose_card
    Card.all.delete_at(rand(self.cards.length))
 end

end
binding.pry


