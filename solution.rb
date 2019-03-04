class Deck
    @@all = []
    attr_accessor :cards, :suits, :ranks

    def initialize()
        @cards = []
        @suits = ["Hearts", "Clubs", "Diamonds", "Spades"]
        @ranks = ["A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"]
        
        @suits.each do |suit|
            @ranks.each do |rank|
                @cards << Card.new(suit, rank)
            end
        end
        
        @@all << self
    end


    def choose_card
       random_card = self.cards.sample
       self.cards.delete(random_card)
    end

    def self.all
        @@all
    end

end

class Card
    @@all = []
    attr_accessor :rank, :suit
    def initialize(suit, rank)
        @suit = suit
        @rank = rank
        @@all << self
    end

    def self.all
        @@all
    end

end
