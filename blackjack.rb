class BlackJack
  def initialize
    @deck = [2, 3, 4, 5, 6, 7,8, 9, 10, 10, 10, 10, 11,
        2, 3, 4, 5, 6, 7,8, 9, 10, 10, 10, 10, 11,
        2, 3, 4, 5, 6, 7,8, 9, 10, 10, 10, 10, 11,
        2, 3, 4, 5, 6, 7,8, 9, 10, 10, 10, 10, 11,
        2, 3, 4, 5, 6, 7,8, 9, 10, 10, 10, 10, 11,
        2, 3, 4, 5, 6, 7,8, 9, 10, 10, 10, 10, 11,
        2, 3, 4, 5, 6, 7,8, 9, 10, 10, 10, 10, 11,
        2, 3, 4, 5, 6, 7,8, 9, 10, 10, 10, 10, 11]
    puts "Your card is #{get_random_card}"
    @player_hand = get_starting_hand
    @dealer_hand = get_starting_hand
    puts "Player hand: #{@player_hand}"
    puts "Dealer hand: #{@dealer_hand}"
  end

  def get_starting_hand
    [get_random_card, get_random_card]
  end

  def get_random_card
    @deck[rand(@deck.length)]
  end

end

BlackJack.new

# puts "What is your name?"
# a = gets.chomp
# puts "Your name is #{a}"