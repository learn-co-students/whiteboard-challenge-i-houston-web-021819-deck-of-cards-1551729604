require 'pry'

class Deck

    attr_accessor :cards

    @@rank = ["A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"]
    @@suit= ["Hearts", "Clubs", "Diamonds", "Spades"]

    def initialize
        @@rank.each do |rank|
            @@suit.each do |suit|
                Card.new(rank: rank, suit: suit, deck: self)
            end
        end
    end

    def cards
        Card.all.select do |card|
            card.deck == self
        end
    end

    def choose_card
        random_card = self.cards.sample 
        random_card.deck = nil
        random_card
    end
        
end

class Card
    attr_accessor :rank, :suit, :deck

    @@all = []

    def initialize(rank:, suit:, deck:)
        @rank = rank
        @suit = suit
        @deck = deck
        @@all << self 
    end

    def self.all
        @@all
    end

end

deck1 = Deck.new()
#binding.pry
#0




