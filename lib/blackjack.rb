
def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  rand(1..11)
end

def display_card_total(card_total)
  # code #display_card_total here
  puts "Your cards add up to #{card_total}"
end

def prompt_user
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
  #get_user_input(card_total)
end

def get_user_input
  # code #get_user_input here
  user_input = gets.chomp

end

def end_game(card_total)
  # code #end_game here
  puts "Sorry, you hit #{card_total}. Thanks for playing!"

end

def initial_round
  # code #initial_round here
card_total = (deal_card + deal_card)
display_card_total(card_total)
card_total
end

def hit?(card_total)
  prompt_user
  user_input = get_user_input
  if user_input == "h" || user_input == "H"
  card_total += deal_card
  card_total
elsif user_input == "s" || user_input == "S"
card_total
else
  invalid_command
end

end

def invalid_command
  puts "Please enter a valid command"


  # code invalid_command here
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
welcome
card_total = initial_round
until card_total > 21
card_total = hit?(card_total)
end
display_card_total(card_total)
end_game(card_total)
end
