#encoding=utf-8
#소수 판별 프로그램


def prime?(input)

	if input == 2
		return true

	elsif input < 2
		return false
	
	else
		check = true
		2.upto (input - 1) do |x|
			if input % x == 0
			check =false
			end
		end

		return check 

		end
	end

	while true

		print "Enter any natural number : "
		input = gets.chomp.to_i

		if prime?(input)
			puts "Prime"

			else 
				puts "Not prime"
			
			end

		end

