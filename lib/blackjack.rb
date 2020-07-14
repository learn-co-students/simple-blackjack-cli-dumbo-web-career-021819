def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
 return rand(1..11)
end

def display_card_total(runner_card_total)
  puts"Your cards add up to #{runner_card_total}"
  return runner_card_total 
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp 
end

def end_game(runner_card_total)
  puts"Sorry, you hit #{runner_card_total}. Thanks for playing!"
end

def initial_round
  card_total= 0
  card1 = deal_card
  card2 = deal_card
  card_total = card1 + card2
  display_card_total(card_total)
  return card_total
end

def hit?(runner_card_total)
  prompt_user
  input = get_user_input
  if input == "h"
    card3 = deal_card
    runner_card_total = runner_card_total+card3
   elsif input == "s"
  else 
    invalid_command
  end
  return runner_card_total

def invalid_command
  puts "Please enter a valid command"
  prompt_user
end
end
#####################################################
# get every test to pass before coding runner below #
#####################################################
def runner
  welcome
  runner_card_total = initial_round 
  until runner_card_total >21
  runner_card_total = hit?(runner_card_total)
  display_card_total(runner_card_total)
  end
  end_game(runner_card_total)
end 