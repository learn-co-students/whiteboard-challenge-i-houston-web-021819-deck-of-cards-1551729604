class Deck

    attr_accessor :cards

    @@all = []
    
    def initialize
        @cards = []
        ranks = ["A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"]
        suits = ["Hearts", "Clubs", "Diamonds", "Spades"]
        ranks.each do |rank|
            suits.each do |suit|
            new_card = Card.new(suit, rank)
            @cards << new_card
            end
        end
    end

    def self.all
        @@all
    end

    def choose_card
        current_card = @cards.sample
        @cards.delete(current_card)
    end


end



class Card

    attr_accessor :rank, :suit

    def initialize(suit, rank)
        @rank = rank
        @suit = suit
    end


    

end


# Deck of cards

# * Construct a class for a `Deck` of cards, which has an attribute `cards` 
#   consisting of an array of 52 `Card` objects.  
# * A `Card` consists of a `rank` 
#   ("A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K") paired with a `suit` 
#   ("Hearts", "Clubs", "Diamonds", "Spades")
# * Your `Deck` should have a method `#choose_card` which selects a random card from the deck 
# and removes it.