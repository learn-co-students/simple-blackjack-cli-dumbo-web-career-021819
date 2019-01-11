
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

def prompt_user(card_total)
  # code #prompt_user here
  puts "Type 'h' to hit or 's' to stay"
  get_user_input(card_total)
end

def get_user_input(card_total)
  # code #get_user_input here
  user_input = gets.strip
  if user_input == "h" || user_input == "H"
    hit?(card_total)
  elsif user_input == "s" || user_input =="S"
    if card_total < 21
      puts "Well done you WON!!"
    else
  end_game(card_total)
end
  else
    invalid_command
  end
end

def end_game(card_total)
  # code #end_game here
  puts "Sorry, you hit #{card_total}. Thanks for playing!"

end

def initial_round
  # code #initial_round here
  card_total = deal_card
  card_total += deal_card
  display_card_total(card_total)
  prompt_user(card_total)


#

 end

def hit?(card_total)
  card_total += deal_card
  # code hit? here
  display_card_total(card_total)
  if card_total >21
  end_game(card_total)
else
  prompt_user(card_total)
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

end
