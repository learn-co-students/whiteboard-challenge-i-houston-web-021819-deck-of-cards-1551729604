require 'pry'

class Deck

  def initialize
    numbers = ["A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"]
      suits = ["Hearts", "Clubs", "Diamonds", "Spades"]
        suits.each do |suit|
          numbers.each do |number|
            Card.new(number, suit, self)
          end
        end
     
  end

  def cards
    Card.all.select do |card|
      card.owning_deck == self
    end
  end

  def choose_card
    sampled_card = self.cards.sample
    sampled_card.owning_deck = nil
    sampled_card
  end
  
end

class Card

  attr_accessor :rank, :suit, :owning_deck

@@all = []

  def initialize(suit, rank, owning_deck=nil)
    @rank = rank
    @suit = suit
    @owning_deck = owning_deck
    @@all << self
  end

  def self.all
    @@all
  end

end


puts "all done"