require 'pry'

def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  1 + rand(11)
end

def display_card_total (card_total)
   puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
 user_input = gets.chomp
 return user_input
end

def end_game (card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  card_one = deal_card
  card_two = deal_card
  card_total = card_one + card_two
  display_card_total (card_total)
  return card_total
end

def invalid_command
  puts 'Please enter a valid command'
end

def hit? (card_total)
  prompt_user
  user_input = get_user_input
  if user_input == "s"
    return card_total
  end
  if user_input == "h"
    new_card_total = card_total + deal_card
    return new_card_total
  end
  if user_input != "h" && user_input != "s"
    invalid_command
    prompt_user
  end
end



#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  
end
    
