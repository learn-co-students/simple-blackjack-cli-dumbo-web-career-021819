def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  x = 1..11
  rand(x)
end

def display_card_total(card_total)
  # code #display_card_total here
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  # code #get_user_input here
  gets.chomp
end

def end_game(card_total)
  # code #end_game here
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  # code #initial_round here
  first_hit = deal_card
  second_hit = deal_card
  sum = first_hit + second_hit
  display_card_total(sum)
  sum
end

def hit?(number)
  # code hit? here
  prompt_user
  user_input = get_user_input
  new_card = 0
  case user_input
  when "h"
    new_card = deal_card
  when "s"
  else
    invalid_command
  end
  number += new_card
  number
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
  cards_now = initial_round
  until cards_now > 21
    cards_now = hit?(cards_now)
    display_card_total(cards_now)
  end
  end_game(cards_now)
end

runner
