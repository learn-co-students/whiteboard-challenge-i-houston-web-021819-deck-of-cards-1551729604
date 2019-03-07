# Deck of cards

* Construct a class for a `Deck` of cards, which has an attribute `cards` consisting of an array of 52 `Card` objects.  
* A `Card` consists of a `rank` ("A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K") paired with a `suit` ("Hearts", "Clubs", "Diamonds", "Spades")
* Your `Deck` should have a method `#choose_card` which selects a random card from the deck and removes it.




<!-- ----choosing a random element from an array
myArray = ["stuff", "widget", "ruby", "goodies", "java", "emerald", "etc" ]
item = myArray[rand(myarray.length)]

------
# def initialize
    #     array_of_cards = Array.new
    #     (0..51).times do |i|
    #         array_of_cards[i] = Card.new
    #     end
    #     @@all << self
    # end -->

    # def self.all
    #     @@all
    # end