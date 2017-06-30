class CurrentSea::CLI

def call
  system("clear")
  sleep(1)
  puts 'Welcome to the current sea, of the currency'
  puts 'For a list of currencies, type "list", or "exit" to exit.'
  input = nil
  while input != "exit"

    input = gets.strip

    case input
    when "list"
      Currency.clear 
      Currency.create
      Currency.list

      puts "\n\nWhich currency would you like to see the rate for?"
      until input == "exit"
      input = gets.strip

      currency = Currency.find_by_name(input)

      if currency != nil
        puts "  One dollar = #{currency.to_dollars} #{currency.name}(s) \n  #{currency.inverse} #{currency.name}(s) converts to one dollar.\n\n"

      elsif currency == nil && input != "exit"
        puts "\nThat is not a valid selection.\n\n"

      elsif input == "list"
        Currency.list
        puts "\n\nWhich would you like to see the rate for?\n\n"
      end# of the if
      end# of loop

    when "exit"
      exit
    else puts "That is not a valid selection\n\n"
    end# of case
  end# of while
end# of call

end# of class