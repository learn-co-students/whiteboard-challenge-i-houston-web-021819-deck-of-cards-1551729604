require 'pry'
class Deck
    attr_accessor :cards
  def initialize
    @ranks = ["A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"]
    @suits = ["Hearts", "Clubs", "Dimonds", "Spades"]
    @cards = []

    @ranks.each do |rank|
      @suits.each do |suit|
        @cards << Card.new(suit, rank)
      end   
    end
  end
  

  def choose_card
    chosen_card = @cards.sample
    @cards.delete(chosen_card)
  end
end

class Card
    attr_accessor :suit, :rank
   def initialize(suit, rank)
    @suit = suit
    @rank = rank
   end
end





=begin
{:Hearts => ["A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"], 
              :Clubs => ["A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"],
              :Dimonds => ["A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"],
              :Spades => ["A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"]}

@cards = ["A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K",
              "A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K",
              "A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K",
              "A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"]
=end
