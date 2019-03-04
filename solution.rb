require "pry"

class Deck

    def initialize
        suits = ["Spades", "Hearts", "Diamonds", "Clubs"]
        ranks = ["A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"]
        suit = suits.each do | suit |           
            rank = ranks.each do | rank |
                Card.new(suit: suit,rank: rank, deck: self)
            end        
        end
    end

    def cards
        Card.all.select do | card |
            card.deck == self
        end
    end

    def choose_card
        Card.all.delete_at(rand(self.cards.length))
    end

end

class Card

    @@all = []
    
    attr_reader :rank, :suit
    attr_accessor :deck

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

binding.pry
0