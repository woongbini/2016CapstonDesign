#encoding=utf-8
#각 자리 숫자합 프로그램


def sum_digits(num)

	sum = 0
	num_array = num.to_s.split('')
	num_array.each do |x|
		sum = sum + x.to_i

	end
	 return sum

	end

	while true

		print "Enter any natural number: "
		input = gets.chomp.to_i
		puts sum_digits(input)

		end

