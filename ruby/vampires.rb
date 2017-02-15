puts "how many employees will be processed today?"
number_applicants=gets.chomp
number_applicants=number_applicants.to_i
applicants_processed=0
until applicants_processed==number_applicants
	puts "what is your name?"
	name_applicant=gets.chomp
	puts "how old will you be at the end of this year? (in years)"
	age_applicant=gets.chomp
	age_applicant=age_applicant.to_i
	puts "what year were you born?"
	year_born=gets.chomp
	year_born=year_born.to_i
	puts "would you like some garlic bread from the cafeteria? (yes/no)"
	garlic_preference=gets.chomp
	puts "will you be enrolling in our company health plan? (yes/no)"
	health_applicant=gets.chomp

	allergies_user="none"
		until allergies_user==("done")
			puts "please name an allergy that you have not already submitted, if no allergies remain enter 'done' "
			allergies_user=gets.chomp
			if allergies_user=="sunshine"
				puts "Probably a vampire"
				allergies_user="done"
			end
		end
	current_year=2017
	case 

		when name_applicant==("Drake Cula"||"Tu Fang")
			puts "Definetly a vampire"	
		when age_applicant==(current_year-year_born)&&(garlic_preference=="yes"||health_applicant=="yes")
			puts "Probably not a vampire." 
		when age_applicant!=(current_year-year_born)&&(garlic_preference=="no"&&health_applicant=="no")
			puts "Almost certainly a vampire."
		when age_applicant!=(current_year-year_born)&& (garlic_preference=="no"||health_applicant=="no")
			puts "Probably a vampire."
		else
			puts "The results are inconclusive"
	end
	
	puts "You said your name is #{name_applicant}, you said you were born in #{year_born} and are #{age_applicant} years old. When offered garlic bread you said #{garlic_preference} and when offered healthcare you said #{garlic_preference}."


	applicants_processed +=1
end

