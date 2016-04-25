begin
n = 4
puts "I hunted #{n} rabbits this week"


puts " type the number of lions : "
input =  gets.chomp.to_i
result = input * 4
puts "They all have #{result} legs."

tiger = ((7**6+3)*9)%4
puts "#{tiger}"


weekdays =["Mon","Tue","Wed","Thu","Fri","Sat","Sun"]

puts weekdays.sort.reverse.inspect

title ="YESTERDAY"

puts title.split("").uniq.sort.join


while true

	print "Input the current temperature in Fahrenheit (F) :"
	temp_f = gets.chomp.to_i
	temp_c = (temp_f - 32) * 5.to_f / 9.to_f

	puts "The current temperature in Celsius is: #{temp_c}C."
	
	end


=end

#encoding=utf-8
while true

	print "Input your height (cm) : "
	height = gets.chomp.to_i
	print "Input your weight (kg) : "
	weight = gets.chomp.to_i

	bmi = weight.to_f / ((height.to_f * 0.01) **2)

	puts "yours BMI is : #{bmi}";
	end

