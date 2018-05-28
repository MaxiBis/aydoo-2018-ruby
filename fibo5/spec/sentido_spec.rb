require 'rspec'
require_relative '../model/fibonacci'

class Sentido_spec

  describe 'sentidoTests' do

    let(:fibo) { Fibonacci.new }
    let(:sentido)

    it 'aplico un sentido directo y devuelve lo mismo' do
      sentido = SentidoDirecto.new
      salidaOriginal = fibo.generar(5)

      expect(sentido.aplicarSobre(salidaOriginal)).to eq salidaOriginal
    end

    #it 'genero una susecion de numero negativo' do
    #  expect{fibo.generar(-1)}.to raise_error ArgumentError, 'Numero debe ser 1 o mayor'
    #end

  end
end