require 'sinatra'
require 'sinatra/json'

configure do
  set :bind, '0.0.0.0'
end

get '/hola_mundo' do
  'Hola Mundo!'
end

get '/crear_superheroe' do
  if params[:nombre].nil?
    halt(400)
    return
  end

  json({ nombre: params[:nombre], super_poder: 'regeneracion' })
end
