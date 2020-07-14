def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
 rand(1..11)
end

def display_card_total(total)
  # code #display_card_total here
  puts "Your cards add up to #{total}"
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
  gets
end

def end_game(total)
  # code #end_game here
  puts "Sorry, you hit #{total}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
  cards = deal_card + deal_card
  display_card_total(cards)
  return cards
end

def hit?(card_total)
  prompt_user
  input = get_user_input
  case input
  when "s"
    return card_total
  when "h"
    card_total += deal_card
    return card_total
  else
    invalid_command
    hit?(card_total)
  end
  # code hit? here
end

def invalid_command
  # code invalid_command here
  puts "Please enter a valid command"
  prompt_user
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
  welcome
  cards = initial_round
  until cards >= 21
  cards =  hit?(cards)
  display_card_total(cards)
  end
end_game(cards)
end
