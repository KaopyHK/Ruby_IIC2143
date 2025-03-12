# En Ruby nil y false son falso, el resto es verdadero, incluyendo
# O, [], {}, 0, 0.0, "", " "

condition_1 = true
condition_2 = false

if condition_1 && condition_2
    puts "Both conditions are true"
else
    puts "At least one condition is false"
end

if condition_1 || condition_2
    puts "At least one condition is true"
else
    puts "None of the conditions are true"
end

if condition_1 && condition_2
    puts "Both conditions are true"
elsif condition_1 || condition_2
    puts "At least one condition is true"
else
    puts "None of them are true"
end

numero = 10
es_par = case
    when numero % 2 == 0 then true
    when numero % 2 != 0 then false
end
puts es_par