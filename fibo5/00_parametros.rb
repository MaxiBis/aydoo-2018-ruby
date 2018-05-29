require 'sinatra'
require 'sinatra/json'
require_relative './model/fibonacci'
require_relative './model/lista_sumatoria'
require_relative './model/generador'

configure do
  set :bind, '0.0.0.0'
end

get '/fibonacci/:cantidadDeNumeros' do
  redirect "/fibonacci/#{params[:cantidadDeNumeros]}/lista?solo=#{params[:solo]}&sentido=#{params[:sentido]}"
=begin
  limiteSusecion = Integer(params[:cantidadDeNumeros])
  fibo = Fibonacci.new
  lista = fibo.generar(limiteSusecion)
  generador = Generador.new(params)
  paridad = generador.generadorParidad
  sentido = generador.generadorSentido
  lista = paridad.aplicarSobre(lista)
  lista = sentido.aplicarSobre(lista)

  lista = usoStd(params)


  json({ "fibonacci": { "limite": params[:cantidadDeNumeros], "lista": lista}})
=end
end

get '/fibonacci/:cantidadDeNumeros/lista' do
  if (params[:solo] != "pares" and params[:solo] != "impares") and !params[:solo].nil? and params[:solo] != ""
    #"Valor solo: #{params[:solo]}"
    halt 400, json({ "error": "Opcion no valida"})
  end
  lista = usoStd(params)
 # if params[:solo].nil?
  #  "Valor nil solo: #{params[:solo]}"
  #else
  #  "not nil"
  #end
  json({ "fibonacci": { "limite": params[:cantidadDeNumeros], "lista": lista}})

end

get '/fibonacci/:cantidadDeNumeros/sumatoria' do
  limiteSusecion = Integer(params[:cantidadDeNumeros])
  fibo = Fibonacci.new
  lista = fibo.generar(limiteSusecion)
  sum = ListaSumatoria.new("s")
  lista = sum.aplicarSobre(lista)
  json({ "fibonacci": { "limite": limiteSusecion, "sumatoria": lista}})
end


def usoStd(parametros)
  limiteSusecion = Integer(parametros[:cantidadDeNumeros])
  fibo = Fibonacci.new
  lista = fibo.generar(limiteSusecion)
  generador = Generador.new(parametros)
  paridad = generador.generadorParidad
  sentido = generador.generadorSentido

  lista = paridad.aplicarSobre(lista)
  lista = sentido.aplicarSobre(lista)
  lista
end