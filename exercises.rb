class Wai < String
	#attr_acccessor :wai

	def palindrome?
		self == self.reverse
	end

	def revit
		self.reverse
	end
	
	def jiggle_it
		#Check to make sure the string contains something
		if self.empty?
			puts "The string is empty!"
		else
			self.split('').shuffle.join
		end
	end

	def euro_mills
		puts "Your Euro Millions main numbers are: " + (1..50).each.to_a.shuffle[1..5].sort.to_s
		puts "Your Euro Millions lucky stars are: " + (1..11).each.to_a.shuffle[1..2].sort.to_s
	end

	def lotto
			puts "Your Lotto numbers are: " + (1..49).each.to_a.shuffle[1..6].sort.to_s
	end

end



puts "Loaded the Pali file ok!"
