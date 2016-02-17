class Account
	def initialize 
	
	puts "Please enter your name"
	@name = gets.chomp
	while @pin.to_s.length != 4 do 
		puts "Please choose a 4 digit pin"
		@pin = gets.to_i
	end
	puts "What is your first deposit?"
	@balance = gets.to_i
	end
	
	public
	
	
	def display
		puts "Name: #{@name} \nBalance: #{@balance} \nPIN: #{@pin} "
	end
	
	def deposit 
		if pin_check
			puts" How much do you wish to deposit?"
			amount = gets.to_i
			@balance += amount
			puts "#{amount} Money deposited\n New Balance: #{@balance}"	
			
		end
	end
	
	def withdraw 
	if pin_check
		puts "How much do you wish to withdraw?"
		withdraw = gets.to_i
		if @balance >= withdraw
			@balance -= withdraw
			puts"#{withdraw} Money withdrawn \nNew Balance: #{@balance}"
		else
			puts "Not enough money! You only have: #{@balance}"
		end
	
	end
	end
	
	
	private
	def pin_check
		puts "What is your PIN?"
		pin = gets.to_i
		return true if pin == @pin
		puts "Invalid PIN!"
		return false
	end
end

awesome = Account.new


while(true)
puts "What do you wish to do?  Create, Display, Deposit, Withdraw or Quit"
choice = gets.chomp
choice.downcase!
	case choice
		
		when 'create'
			awesome = Account.new
		when 'display'
			awesome.display
		when 'deposit'
			awesome.deposit
		when 'withdraw'
			awesome.withdraw
		when 'quit'
			break
		else 
			puts "Invalid choice!"
	end
end


	