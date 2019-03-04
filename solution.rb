require 'pry'
class Deck
    attr_accessor :cards

    def initialize
        self.cards = []
        ranks = ["A","2","3","4","5","6","7","8","9","10","J","Q","K"]
        suits = ["Hearts", "Spades", "Diamonds", "Clubs"]

        suits.each do |suit|
            ranks.each do |rank|
                new_card = Card.new(suit,rank)
                cards << new_card
            end
        end
    end
    
    def choose_card
        chosen_card = cards.sample
        cards.delete(chosen_card)
    end


end

class Card
    attr_accessor :suit, :rank
    @@all = []
    
    def initialize(suit, rank)
        @suit = suit
        @rank = rank
        @@all << self
    end

    def self.all
        @@all
    end


end