require 'sinatra'
require 'byebug'

def read_with_rescue(file)
  begin
    File.read(file)
  rescue => e
    puts e
    status 404
  end
end

before do
  content_type 'application/json'
end

def is_status?(id)
  statuses = ['404','422', '500']
  statuses.include?(id)
end

get '/api/incidente/status' do
  File.read('./files/incidentes_status.json')
end

get '/api/incidente/:id' do
  id = params[:id]

  file = "./files/incidentes_#{id}.json"
  read_with_rescue(file)
end

post '/api/incidente' do
  
  push = JSON.parse(request.body.read)
  puts "I got some JSON: #{push.inspect}"

end
