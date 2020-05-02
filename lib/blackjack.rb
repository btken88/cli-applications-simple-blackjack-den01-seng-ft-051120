def welcome
  # code #welcome here
  puts "Welcome to the Blackjack Table"
end

def deal_card
  # code #deal_card here
  card_number = rand(1..11)
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
  user_choice = gets
  return user_choice
end

def end_game(card_total)
  # code #end_game here
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
end

def initial_round
  # deal 2 cards to the user's hand
  hand = deal_card + deal_card
  # show user hand points
  display_card_total(hand)
end

def hit?(total)
  card_total = total
  # prompt user and store user's choice
  prompt_user
  choice = get_user_input
  until choice = ('h' || 's') do
    invalid_command
    prompt_user
    choice = get_user_input
  end
  if choice == 's'
    return card_total
  if choice == 'h'
    card_total += deal_card
    puts card_total
  end
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
end

hit?(10)