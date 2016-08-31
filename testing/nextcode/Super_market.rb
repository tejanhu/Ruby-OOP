class Super_market

  def initialize()
    print `clear`
    puts "Romeo's GROCERY STORE"
    puts ""
    puts 'Choose an operation:'
    puts 'a.) Register a fruit'
    puts 'b.) Buy a fruit'
    puts 'c.) Update a fruit stock'
    puts 'd.) Check fruit stocks'
    puts ""
    puts 'x.) Exit'
    puts ""
    puts 'Select an option (a, b, c, d, or x):'
while(true)
    input = gets.chomp
    @input = input
    @fruits = []
    @stock_count = []
    @fruits_dict = {}
    @basket = []
    @fruit = nil


    case input
    when 'a'
      puts 'Registering a fruit'
      puts
      puts 'Enter the name of a fruit:'
      @fruits.push([gets.chomp])
      @stock_count.push([@fruits.length])
      @fruits_dict = {:name => @fruits, :fruit_count => @stock_count}

      when 'b'
      puts 'Buying a fruit'
      puts
      puts 'Which fruit would you like to buy?'
      @basket.push([gets.chomp])
      @stock_count.push([@fruits.length-1])
      @fruits_dict = {:name => @fruits, :fruit_count => @stock_count}

      when 'c'
      puts 'Updating a fruit stock'
      puts
      puts 'Please enter a fruit and the suggested amount'
      @fruit = gets.chomp
      @stock_count .push([gets.chomp])
      @fruits_dict = {:name => @fruit, :fruit_count => @stock_count}

      when 'd'
      puts 'Checking fruit stocks'
      puts
      puts @fruits_dict.to_s


      else
      @input=='x'
      #exits the program
      exit


    end
    @stock_count.each {|item| puts item}
    end

    #end initialize
  end

end
#end class
market = Super_market.new
