class Card
  attr_accessor :rank, :suit

  def initialize(rank, suit)
    @rank = rank
    @suit = suit
  end 

  def output_card
    puts "#{self.rank} of #{self.suit}"
  end    
end

class Deck
  def initialize
      @cards = []
      @suits = ["Diamonds", "Spades", "Clubs", "Hearts"]
      @ranks = [*(2..10), "J", "Q", "K", "A"]

      @ranks.each do |rank|
        @suits.each do |suit|
          @cards << Card.new(rank, suit)
        end
      end

  @cards.shuffle!        
  end
  
  def deal 
    @cards.shift
  end  
end            

deck = Deck.new
p deck.deal