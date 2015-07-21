def rank(hand)
end

public class Card
  attr_accessor :suit, :value
  private
  def initialize (name)
    value = name[0]
    if value == "J"
      @value = 10
    elsif value == "Q"
      @value = 11
    elsif value == "K"
      @value = 12
    elsif value == "A"
      @value = 13
    else 
      @value = value.to_i
    end
    @suit = name[1]
  end
end

card = ["5H", "5C", "6S", "7S", "KD"].sort
hand = ["5D", "8C", "9S", "JS", "AC"].sort

p Card.new(card[4]).suit