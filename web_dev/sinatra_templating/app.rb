# require gems
require 'sinatra'
require 'sqlite3'

set :public_folder, File.dirname(__FILE__) + '/static'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

# show students on the home page
get '/' do
  @students = db.execute("SELECT * FROM students")
  erb :home
end

get '/students/new' do
  erb :new_student
end

# create new students via
# a form
post '/students' do
  db.execute("INSERT INTO students (name, campus, age) VALUES (?,?,?)", [params['name'], params['campus'], params['age'].to_i])
  redirect '/welcome'
end

# add static resources
get '/welcome' do 
	@student_name = db.execute("SELECT name FROM students WHERE id = ?", [db.last_insert_row_id])
	erb :welcome
end

get '/students/edit/:id' do
	@student = db.execute("SELECT * FROM students WHERE id = ?", [params['id']])
	erb :edit_entry
end

post '/edit_student/:id' do
	db.execute("UPDATE students SET name = ?, campus = ?, age = ? WHERE id = ?", [[params['name'], params['campus'], params['age'].to_i], params['id']])
	redirect '/'
end