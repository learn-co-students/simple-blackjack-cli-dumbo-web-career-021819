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

end

def get_user_input
  # code #get_user_input here
  answer = gets.chomp
end

def end_game(card_total)
  # code #end_game here
  puts "Sorry, you hit #{card_total}. Thanks for playing!"

end

def initial_round
  # code #initial_round here
  total = deal_card + deal_card
  display_card_total(total)
  return total
end

def hit?(current)
  prompt_user
  answer = get_user_input
  if answer == 'h'
    current + deal_card
  elsif answer == 's'
    current
  else
    invalid_command
  return current
end
end


def invalid_command
  puts "Please enter a valid command"
  # code invalid_command here
  prompt_user
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  # code runner here
  welcome
  total = initial_round
    until total > 21
      total = hit?(total)
      display_card_total(total)
    end
    end_game (total)
  end
