def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  rand(1..11)
end

def display_card_total(number)
  # code #display_card_total here
  puts "Your cards add up to #{number}"
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay" 
end

def get_user_input
  # code #get_user_input here
  gets
end

def end_game(number)
  # code #end_game here
  puts "Sorry, you hit #{number}. Thanks for playing!"
end

def initial_round
  card1 = deal_card
  card2 = deal_card
  sum = card1 + card2
  display_card_total(sum)
  sum
  # code #initial_round here
end

def hit?(total)
  prompt_user
  input = get_user_input
  if input == "s"
    total
  elsif input == "h"
    total += deal_card
  else
    invalid_command
    prompt_user
    input = get_user_input
  end
  total
end

def invalid_command
  # code invalid_command here
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
  welcome
  sum = initial_round
  until sum > 21 
    sum = hit?(sum)
    display_card_total(sum)
  end
end_game(sum)
end
    
