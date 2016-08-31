class Grocery

  # def initializer(a,b,c,d,x)
  #   # @a=a
  #   # @b=b
  #   # @c=c
  #   # @d=d
  #   # @x=x
  #
  # end

  def initialize()
    @name
    @title
    @input
    # @fruit
    @fruits_list, @basket, @stock, @stock_count  = [], [], [], []
    get_instructions
  #end initializer
  end

  def set_name name
    @name=name.capitalize
  end

  def get_name
    @name
  end

  def set_title
    @title = @name+"'s"+" "+'grocery store'.upcase!
  end

  def get_title
    @title
  end

  def get_instructions
    puts "#{@title}"
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
    input = gets.chomp
    @input = input
    @fruits = {}
    @stock_count = {}
    # @fruits_dict = {}
    @basket = {}

    case input
    when 'a'
      puts 'Registering a fruit'
      puts
      puts 'Enter the name of a fruit:'
      # @fruit = gets.chomp
      # fruit = gets.chomp.to_s
      # @fruits_list.push(fruit)
      @fruits{gets.chomp}
      @stock_count{@fruits.length}
      @fruits_dict = {:name => @fruits, :fruit_count => @stock_count}
      puts 'Registered a '+ @fruits.to_s

    when 'b'
      puts 'Buying a fruit'
      puts
      puts 'Which fruit would you like to buy?'
      @basket{(gets.chomp)}
      @stock_count{(@fruits.length-1)}
      @fruits_dict = {:name => @fruits, :fruit_count => @stock_count}
      puts 'Buying a ' + @basket.to_s

    when 'c'
      puts 'Updating a fruit stock'
      @fruits gets.chomp
      @stock_count .push(gets.chomp)
      @fruits_dict = {:name => @fruit, :fruit_count => @stock_count}

    when 'd'
      puts 'Checking fruit stocks'
      puts
      puts @fruits_dict

    else
      @input=='x'
      #exits the program
      exit
    #end if/elsif/else statements
    end
  #end get_instructions method
  end


#end class
end
