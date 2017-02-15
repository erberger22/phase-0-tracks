puts "how many employees will be processed today?"
number_applicants=gets.chomp
number_applicants=number_applicants.to_i
applicants_processed=0
until applicants_processed==number_applicants
puts "what is your name?"
name_applicant=gets.chomp
puts "how old are you? (in years)"
age_applicant=gets.chomp
age_applicant=age_applicant.to_i
puts "what year were you born?"
year_born=gets.chomp
year_born=year_born.to_i
puts "would you like some garlic bread from the cafeteria? (yes/no)"
garlic_preference=gets.chomp
puts "will you be enrolling in our company health plan? (yes/no)"
health_applicant=gets.chomp

puts "You said your name is #{name_applicant}, you said you were born in #{year_born} and are #{age_applicant} years old. 
When offered garlic bread you said #{garlic_preference} and when offered healthcare you said #{garlic_preference}.
Because of your answers, we can say that:"

case 

when name_applicant==("Drake Cula"||"Tu Fang")
	puts "you definetly a vampire"	

when age_applicant==(2017-year_born)&&(garlic_preference=="yes"||health_applicant=="yes")
	puts "you are probably not a vampire." 

when age_applicant!=(2017-year_born)&&(garlic_preference=="no"&&health_applicant=="no")
	puts "you are almost certainly a vampire."

when age_applicant!=(2017-year_born)&& (garlic_preference=="no"||health_applicant=="no")
	puts "you are probably a vampire."

else
	puts "the results are inconclusive"
end
applicants_processed +=1
end

