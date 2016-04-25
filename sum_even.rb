#encoding=utf-8
#짝수의 합 계산 프로그램




while true do 

	print "Enter any natural number: "

	n=gets.chomp.to_i


	sum=0

	1.upto(n) do |x|
		if x%2 == 0
			sum = sum + x
		end
	end
	puts sum
	end
