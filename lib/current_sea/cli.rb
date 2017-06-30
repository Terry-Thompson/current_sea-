class CurrentSea::CLI

def call
  system("clear")
  sleep(1)
  puts 'Welcome to the current sea, of the currency'
  puts 'For a list of currencies, type "list", or "exit" to exit.'
  input = nil
  until input == "exit"
    input = gets.strip
    case input
    when "list"
      Currency.create
      Currency.list
      puts "Which currency would you like to see the value of?"
      input = gets.strip
      Currency.find_by_name(input)
    when "exit"
      exit
    end# of case
  end# of loop 
end# of call

end# of class