# Write a program to implement a simple bank account. 

def banking_app
	# Your code here.
	balance = 0

	password = "password"

	clear = "\033[2J\033[H"

	puts "Welcome to the banking app"

	puts "Please enter your password"

	input_password = gets.strip

	unless input_password == password
		puts "Invalid password"
	else 
		puts "Correct!"
		
		loop do
			
			puts "What would you like to do? (options: balance, deposit or withdraw)"

			action = gets.chomp

			if action == "balance"
				puts "Your balance is $" + balance.to_s
			
			elsif action == "deposit"
				puts "How much would you like to deposit?"
				deposit = gets.strip.to_i
				balance = balance + deposit
				puts clear
				puts "Your balance is $" + balance.to_s
			
			elsif action == "withdraw"
				puts clear
				puts "How much would you like to withdraw?"

				withdrawal = gets.strip.to_i
				
				if withdrawal > balance
					puts clear
					puts "Insufficient funds"
					puts "Your balance is $" + balance.to_s
				else
					balance -= withdrawal
					puts clear
					puts "Your balance is $" + balance.to_s
				end

			else
				puts "Invalid selection!"
		end
		end
	end
end

banking_app
