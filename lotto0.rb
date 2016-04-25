#encoding=utf-8
#로또번호 추첨 프로그램 (0)


def draw(num)

	draw_arrays = Array.new

	while draw_arrays.size < num
		draw_arrays << (1..45).to_a.sample(6).sort

		end

		draw_arrays.uniq!

		return draw_arrays
	#	draw_arrays.each do|array|

	#		puts array.inspect

			end
		


	#draw(10)
	

	def lot(win_array,num)
		draw_result =draw(num)
		draw_result.each do |array|
			if array == win_array.sort
			#	puts "Congratulations!"
				puts "1st Prize!"
			elsif (win_array & array).size == 5
				puts "2nd Prize!"

				end
			end
		end

		lot([1,2,3,4,5,6],1000000)

