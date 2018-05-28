require 'rspec'
require_relative '../model/fibonacci'
require_relative '../model/sentido'
require_relative '../model/sentido_directo'
require_relative '../model/sentido_inverso'

class Sentido_spec

  describe 'sentidoTests' do

    let(:fibo) { Fibonacci.new }

    it 'aplico un sentido directo y devuelve lo mismo' do
      sentido = SentidoDirecto.new
      salidaOriginal = [0,1,1,2,3]

      expect(sentido.aplicarSobre(salidaOriginal)).to eq salidaOriginal
    end

    it 'aplico un sentido inverso y devuelve la lista al revez' do
      sentido = SentidoInverso.new
      salidaOriginal = [0,1,1,2,3]
      salidaEsperada = [3,2,1,1,0]

      expect(sentido.aplicarSobre(salidaOriginal)).to eq salidaEsperada
    end

    #it 'genero una susecion de numero negativo' do
    #  expect{fibo.generar(-1)}.to raise_error ArgumentError, 'Numero debe ser 1 o mayor'
    #end

  end
end