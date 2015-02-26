#!/usr/bin/env ruby

class Deck
  def initialize
   new_decks = Card.new
   @new_deck = []
   new_decks.suits.each do |suit|
     new_decks.face_values.each do |face_value|
       @new_deck.push(suit + face_value)
     end
   end
    print @new_deck
  end

  # def to_s
  #   @new_deck.to_s
  # end

  def shuffle
    puts @new_deck.shuffle!
  end

  def deal
    print @new_deck.pop
  end
end

class Card

  def initialize
    
    @new_deck
  end

  def to_s
    @new_deck
  end

  def suits
    @suits = ["\u2660", "\u2663", "\u2764", "\u2666"]
  end

  def face_values
    @face_values = %w(A 2 3 4 5 6 7 8 9 10 J Q K)
  end

end

deck = Deck.new
deck.deal
#deck.shuffle
puts ''
deck.deal
