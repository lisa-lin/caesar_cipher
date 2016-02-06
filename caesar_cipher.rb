def caesar_cipher(input, shift)
	result = ""

	input.each_byte do |c|					#converts char to ASCII code
		if c >= 65 && c <= 90				#if char is uppercase
			c = c - 65
			cipher = (c + shift) % 26
			result << (cipher + 65).chr
		elsif
			c >= 97 && c <= 122				#if char is lowercase
			c = c - 97
			cipher = (c + shift) % 26
			result << (cipher + 97).chr
		else
			result << c.chr					#if char is other special char then just print out
		end
	end
	result
end

print "Enter your message: "
message = gets.chomp

print "Enter your shift code: "
code = gets.chomp

puts "Your secret code is \"#{caesar_cipher(message, code.to_i)}\""

