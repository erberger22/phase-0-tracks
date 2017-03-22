# require gems
require 'sinatra'
require 'sqlite3'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

# write a basic GET route
# add a query parameter
# GET /
get'/students/SD' 
get '/' do
  "#{params[:name]} is #{params[:age]} years old."
end

# write a GET route with
# route parameters
get '/about/:person' do
  person = params[:person]
  "#{person} is a programmer, and #{person} is learning Sinatra."
end

get '/:person_1/loves/:person_2' do
  "#{params[:person_1]} loves #{params[:person_2]}"
end

# write a GET route that retrieves
# all student data
get '/students' do
  students = db.execute("SELECT * FROM students")
  response = ""
  students.each do |student|
    response << "ID: #{student['id']}<br>"
    response << "Name: #{student['name']}<br>"
    response << "Age: #{student['age']}<br>"
    response << "Campus: #{student['campus']}<br><br>"
  end
  response
end

# write a GET route that retrieves
# a particular student

get '/students/:id' do
  student = db.execute("SELECT * FROM students WHERE id=?", [params[:id]])[0]
  student.to_s
end

get '/contact' do
	"1600 Pennsylvania Ave NW, Washington, DC"
end

get '/great_job/' do
	name = params[:name]
	if name
		"Good job #{name}!"
	else
		"Good job!"
	end
end

get '/:num_1/:num_2' do
	answer = params['num_1'].to_i+params['num_2'].to_i
	"#{answer}"
end

get '/:campus' do
 campus = params['campus']
 student = db.execute("SELECT * FROM students WHERE campus =?", [campus])
 
 response = ""
 student.each do |student|
 	response << "<br>Name: #{student['name']}<br>"
  response << "Age: #{student['age']}<br>"
 end
 "Here is a list of the students attending #{campus}: <br>#{response}"
end
