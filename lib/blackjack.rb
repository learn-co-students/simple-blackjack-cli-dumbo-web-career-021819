def welcome
  puts ("Welcome to the Blackjack Table")
end

def deal_card
  rand(1..11)
end

def display_card_total(number)
  puts ("Your cards add up to #{number}")
end

def prompt_user
  puts("Type 'h' to hit or 's' to stay")
end

def get_user_input
  gets.chomp
end

def end_game(card_total)
  puts ("Sorry, you hit #{card_total}. Thanks for playing!")
end

def initial_round
  card1 = deal_card
  card2 = deal_card
  display_card_total(card1 + card2)
  card1 + card2
end

def hit?(number)
  prompt_user
  answer = get_user_input
  if answer == 's'
    return number
  elsif answer == 'h'
    return number += deal_card
  else
    invalid_command
end

def invalid_command
  puts ("Please enter a valid command")
  prompt_user
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  total = initial_round
  until total > 21
    total = hit?(total)
  end
  display_card_total(total)
  end_game
end
end
