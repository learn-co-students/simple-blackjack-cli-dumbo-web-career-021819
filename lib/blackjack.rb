def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
end

def display_card_total(hand_total)
  puts "Your cards add up to #{hand_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  input = gets.chomp
end

def end_game(hand_total)
  puts "Sorry, you hit #{hand_total}. Thanks for playing!"
end

def initial_round(hand_total=0)
  2.times do
    hand_total += deal_card
  end
  display_card_total(hand_total)
  return hand_total
end

def hit?(hand_total)
  prompt_user
  user_input = get_user_input
  if user_input == 's'
    #hit?(hand_total)
  elsif user_input == 'h'
    hand_total += deal_card
    display_card_total(hand_total)
  else
    invalid_command
  end
  return hand_total
end

def invalid_command
  puts "Type in a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################


def runner
  # code runner here
  hand = 0
  welcome
  hand = initial_round(hand)
  until hand > 21
    hand = hit?(hand)
  end
  end_game(hand)
end
    
