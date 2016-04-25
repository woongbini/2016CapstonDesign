file_write = File.open("snake.txt","w")

0.upto(9) do
	file_write.puts("~" * 10)

end

file_write.close


file_read = File.open("snake.txt","r")
file_read.each do |line|
	puts line

end

file_read.close


