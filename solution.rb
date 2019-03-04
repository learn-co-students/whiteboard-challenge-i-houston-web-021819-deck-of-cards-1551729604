require 'pry'
class Card
    
    attr_accessor :rank, :suit


    def initialize(suit,rank)
        @rank = rank
        @suit = suit

    end
    
end

class Deck
    
    attr_accessor :rank, :suit, :cards
    
    def initialize 
        @rank = ["A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"]
        @suit = ["Hearts", "Clubs", "Diamonds", "Spades"]
        @cards = []
        rank.each do |rank|
            suit.each do |suit|
                @cards << Card.new(rank, suit)
            end
        end
        
    end

    def self.cards
        @cards
    end

    def choose_card
        random_card = rand(cards.length)
        @cards.delete_at(random_card)
         
    end

end


