require 'sinatra'
require 'sinatra/json'
require_relative './fibonacci'
require_relative './lista_sumatoria'
require_relative './generador'

configure do
  set :bind, '0.0.0.0'
end

get '/fibonacci/:cantidadDeNumeros' do
  redirect "/fibonacci/#{params[:cantidadDeNumeros]}/lista?solo=#{params[:solo]}&sentido=#{params[:sentido]}"
end

get '/fibonacci/:cantidadDeNumeros/lista' do
  lista = usoStd(params)
  json({ "fibonacci": { "limite": params[:cantidadDeNumeros].to_i, "lista": lista}})
end

get '/fibonacci/:cantidadDeNumeros/sumatoria' do
  lista = usoStd(params)
  sum = ListaSumatoria.new("s")
  lista = sum.aplicarSobre(lista)
  json({ "fibonacci": { "limite": params[:cantidadDeNumeros].to_i, "sumatoria": lista}})
end

get '/fibonacci/*' do
  errores(params)
end

def usoStd(parametros)
  errores(params)
  limiteSusecion = Integer(parametros[:cantidadDeNumeros])
  fibo = Fibonacci.new
  generador = Generador.new(parametros)
  paridad = generador.generadorParidad
  sentido = generador.generadorSentido

  lista = fibo.generar(limiteSusecion)
  lista = paridad.aplicarSobre(lista)
  lista = sentido.aplicarSobre(lista)
  lista
end

def errores(params)
  if (params[:solo] != "pares" and params[:solo] != "impares") and !params[:solo].nil? and params[:solo] != ""
    halt 400, json({ "error": "Opcion no valida"})
  end
  if (params[:sentido] != "directo" and params[:sentido] != "inverso") and !params[:sentido].nil? and params[:sentido] != ""
    halt 400, json({ "error": "Opcion no valida"})
  end
  if params[:cantidadDeNumeros].to_i.to_s != params[:cantidadDeNumeros]
    halt 400, json({ "error": "Opcion no valida"})
  end
end
