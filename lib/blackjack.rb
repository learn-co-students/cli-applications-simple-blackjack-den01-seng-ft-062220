def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
   rand 1..11
end

def display_card_total(card_total)
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game (card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  card_one = deal_card
  card_two = deal_card
  card_total = card_one + card_two
  display_card_total(card_total)
  return card_total
end

def hit? (card_total)
  prompt_user
    player_answer = get_user_input
  if player_answer == 'h'
    new_card = deal_card
    card_total = card_total + new_card
  end
  if player_answer != 'h' && player_answer != 's'
    invalid_command
    prompt_user
    get_user_input
  end
  return card_total
end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
 players_hand = 0
 welcome 
 players_hand = initial_round
  until players_hand > 21 do
   players_hand = hit?(players_hand)
    display_card_total(players_hand)
  end
  return end_game(players_hand)
end
    
