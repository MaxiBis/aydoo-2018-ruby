require 'sinatra'
require 'sinatra/json'
require_relative './model/fibonacci'

configure do
  set :bind, '0.0.0.0'
end

get '/fibonacci/:cantidadDeNumeros' do
  limiteSusecion = Integer(params[:cantidadDeNumeros])
  fibo = Fibonacci.new
  lista = fibo.generar(limiteSusecion)
  json({ "fibonacci": { "limite": limiteSusecion, "lista": lista}})
end

get '/fibonacci/:cantidadDeNumeros/lista' do
  redirect "/fibonacci/#{params[:cantidadDeNumeros]}"
end

post '/alumno/create' do
  "Alumno creado con nombre: #{params[:nombre]}"
end

get '/alumno/edit' do
  "Formulario de edicion del alumno con ID: #{params[:id]}"
end

put '/alumno/update' do
  "Alumno con ID #{params[:id]} actualizado con nombre: #{params[:nombre]}"
end

delete '/alumno/destroy/:id' do
  "Alumno con ID #{params[:id]} eliminado"
end
