require "sinatra"

set :public_folder, File.dirname(__FILE__) + '/public'

def workshop_content(name)
    File.read("workshops/#{name}.txt")
rescue Errno::ENOENT
    return nil
end

def save_workshop(name, description)
    File.open("workshops/#{name}.txt", "w") do |file|
        file.print(description)
    end
end

def delete_workshop(name)
    File.delete("workshops/#{name}.txt")
end

get '/' do
    files = Dir.entries("workshops")
    @files = files.reject { |file| file == '.' || file == '..' }
    erb :home
end

get '/create' do
    erb :create
end

get '/:name' do 
    @name = params[:name]
    @description = workshop_content(@name)
    erb :workshop
end

get '/:name/edit' do
    @name = params[:name]
    @description = workshop_content(@name)
    erb :edit
end

post '/create' do
    save_workshop(params["name"],params["description"])
    @name = params[:name]
    @message = "creado"
    erb :message
end

delete '/:name' do
    delete_workshop(params[:name])
    @name = params[:name]
    @message = "eliminado"
    erb :message
end

put '/:name' do
    save_workshop(params[:name], params["description"])
    redirect URI.encode_www_form_component("/#{params[:name]}")

end