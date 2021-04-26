class BlackJack
  def initialize
    @still_playing = true
    @deck = [2, 3, 4, 5, 6, 7,8, 9, 10, 10, 10, 10, 11,
        2, 3, 4, 5, 6, 7,8, 9, 10, 10, 10, 10, 11,
        2, 3, 4, 5, 6, 7,8, 9, 10, 10, 10, 10, 11,
        2, 3, 4, 5, 6, 7,8, 9, 10, 10, 10, 10, 11,
        2, 3, 4, 5, 6, 7,8, 9, 10, 10, 10, 10, 11,
        2, 3, 4, 5, 6, 7,8, 9, 10, 10, 10, 10, 11,
        2, 3, 4, 5, 6, 7,8, 9, 10, 10, 10, 10, 11,
        2, 3, 4, 5, 6, 7,8, 9, 10, 10, 10, 10, 11]
    @player_hand = get_starting_hand
    @dealer_hand = get_starting_hand
    run_game
  end

  def print_game_state
    puts "Player hand: #{@player_hand} value: #{get_hand_value(@player_hand)}"
    puts "Dealer hand: #{@dealer_hand} value: #{get_hand_value(@dealer_hand)}"
  end

  def run_game
    user_input = false
    while user_input != "stand"
      puts "hit or stand?"
      print_game_state
      if get_hand_value(@player_hand) > 21
        puts "You bust! Dealer wins"
        return
      end

      user_input = gets.chomp

      if user_input == "hit"
        hit(@player_hand)
      elsif user_input == "stand"
        puts "Player stands"
      else
        puts "Sorry, I didn't understand that"
      end
      # hit, stand
      # dealer hit sbelow 17
    end
    dealer_decisions
    calculate_game_state
  end

  def dealer_decisions
    while get_hand_value(@dealer_hand) < 17
      puts "Dealer hits!"
      hit(@dealer_hand)
      # print_game_state
    end
  end

  def calculate_game_state
    print_game_state
    if get_hand_value(@player_hand) > 21 
      puts "Sorry, you bust. You lose!"
    elsif get_hand_value(@dealer_hand) > 21
      puts "Dealer busts, you win!"
    elsif get_hand_value(@player_hand) == get_hand_value(@dealer_hand)
      puts "This game is a tie"
    elsif get_hand_value(@player_hand) > get_hand_value(@dealer_hand)
      puts "You win! Play again?"
    elsif get_hand_value(@player_hand) < get_hand_value(@dealer_hand)
      puts "House wins! Sorry"
    else
      puts "Something went wrong"
    end
  end

  def hit(hand)
    hand.push(get_random_card)
  end

  def get_starting_hand
    [get_random_card, get_random_card]
  end

  def get_hand_value(hand)
    sum = 0
    hand.each do |card|
      sum = sum + card
    end
    sum
  end

  def get_random_card
    @deck[rand(@deck.length)]
  end
  
end

BlackJack.new

# puts "What is your name?"
# a = gets.chomp
# puts "Your name is #{a}"