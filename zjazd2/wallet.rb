class Wallet
	attr_accessor :balance
end

wallet = Wallet.new
wallet.balance = 100
puts wallet.balance