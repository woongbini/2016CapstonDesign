#encoding=utf-8
#비만 여부 판별 프로그램

person_list = Array.new

1.upto(3) do |p|
  print "Person #{p}'s name: "
    p_name = gets.chomp.to_s
      print "Person #{p}'s height(cm): "
        p_height = gets.chomp.to_i
          print "Person #{p}'s weight(kg): "
            p_weight = gets.chomp.to_i

              p_bmi = p_weight.to_f / ((p_height.to_f * 0.01) ** 2)
                if p_bmi < 16
                    p_category = "Severely underweight"
                      elsif p_bmi < 18.5
                          p_category = "Underweight"
                            elsif p_bmi < 25
                                p_category = "Normal"
                                  elsif p_bmi < 30
                                      p_category = "Overweight"
                                        else
                                            p_category = "Obese"
                                              end

                                                person_list << {:name => p_name, :bmi => p_bmi, :category => p_category}
                                                end

                                                person_list.each do |person|
                                                  puts "#{person[:name]}'s BMI is #{person[:bmi]}, and he/she is    #{person[:category]}"                                                  end
