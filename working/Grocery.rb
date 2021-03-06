class Grocery

  def initialize(input=nil,fruits=nil,stock_count=nil,fruits_dict=nil,basket=nil,fruit=nil)
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

    @input = gets.chomp
    @fruits = []
    @stock_count = []
    @fruits_dict = {}
    @basket = []
    @fruit = nil

    main(input=nil,fruits=nil,stock_count=nil,fruits_dict=nil,basket=nil,fruit=nil)
    #end initialize
  end

  def main(input=nil,fruits=nil,stock_count=nil,fruits_dict=nil,basket=nil,fruit=nil)

    if @input=='a'
      puts 'Registering a fruit'
      puts
      puts 'Enter the name of a fruit:'
      @fruits = [gets.chomp]
      @stock_count = [@fruits.length]
      @fruits_dict = {:name => @fruits, :fruit_count => @stock_count}

    elsif @input=='b'
      puts 'Buying a fruit'
      puts
      puts 'Which fruit would you like to buy?'
      @basket = [gets.chomp]
      @stock_count = [@fruits.length-1]
      @fruits_dict = {:name => @fruits, :fruit_count => @stock_count}

    elsif @input=='c'
      puts 'Updating a fruit stock'
      puts
      puts 'Please enter a fruit and the suggested amount'
      @fruit = gets.chomp
      @stock_count = [gets.chomp]
      @fruits_dict = {:name => @fruit, :fruit_count => @stock_count}


    elsif @input=='d'
      puts 'Checking fruit stocks'
      puts
      puts @fruits_dict.to_s


    else
      @input=='x'
      #exits the program
      exit


    #end if/elsif/else statements
    end
  end



#end class
end
