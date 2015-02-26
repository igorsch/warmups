require_relative 'card'

class Deck
  
  def initialize
    @cards = []
      # For each suit and value combo
    # add a new card to the deck array
    Card.suits.each do |suit|
      Card.values.each do |value|
        @cards.push(Card.new(suit, value))
      end
    end
    shuffle
  end

  def to_s
    if @cards.length > 0
    @cards.join(',')
    else
      "Empty deck"
    end
  end

  def shuffle
    @cards.shuffle!
  end

  def deal
    if @cards.length > 0
      @cards.pop
    else
    "NO MOAR CARDS"
    end
  end

  def sort!
    @cards.sort!
  end
end

if __FILE__ == $PROGRAM_NAME
  deck = Deck.new
  puts deck
  53.times do
    puts deck.deal
  end
  puts deck
  deck.sort!
  puts deck
end
