class Deck
  attr_accessor :cards
  def initialize
    self.cards = [] 
    suit_array = ["Hearts", "Diamonds", "Spades", "Clubs"]
    rank_array = ["Q", "K", "J", "A", "2", "3", "4", "5", "6", "7", "8", "9", "10"]   
    suit_array.each do |suit|
      rank_array.each do |rank|
        self.cards << Card.new(suit, rank)
      end
    end
  end

  def choose_card
    rand = self.cards.sample
    self.cards.delete(rand)
  end
  
end

class Card
  attr_accessor :suit, :rank
  def initialize(suit, rank) 
    self.suit = suit
    self.rank = rank
  end
end
