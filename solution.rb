require 'pry'

class Deck
    def intialize
        self.create.each do |card|
            card.deck = self
        end
    end

    
    
    

    def self.create 
        new_deck = []
        @@rank = ["A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"]
        @@suit = ["Hearts", "Clubs", "Diamonds", "Spades"]
        @@suit.each do |suit|
            @@rank.each do |rank|
                new_card = Card.new(rank, suit, self)
                new_deck << new_card
            end
        end
       
        new_deck
    end

    

    def cards
        Card.all.select {|card| card.deck == self}
    end
       
        

    def choose_card
        random_card = self.cards[rand(cards.length)]
        cards.remove(random_cardcard)
        #self.size-=1
        random_card
    end


end

class Card
    attr_accessor :rank, :suit, :deck
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
    
end

